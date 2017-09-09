%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Bone Mesh Female Toolkit
% Copyright (c) 2017 <Manish Sreenivasa, Daniel Gonzalez Alvarado>
% manish.sreenivasa@ziti.uni-heidelberg.de, Heidelberg University, Germany
%
% Licensed under the zlib license. See LICENSE for more details.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear;
clc;

% Use these settings to control the output meshes/model details
resample_value = 0.5; % Relative scalar value between 0.1 to 1.0
inputHeight = 1.6; % Overall height of the subject in meters
%outputLuaFile = 'export/exported_model.lua'; % Leave empty to disable saving of Lua model
outputLuaFile = '';
bExport_ObjMeshes = 0; % Boolean to save mesh files in obj format
bExport_StlMeshes = 0; % Boolean to save mesh files in stl format

% Iso2Mesh(http://iso2mesh.sourceforge.net) is required for mesh resampling
% You may use the included distribution (v1.8 linux) or provide the local
% path to your iso2mesh distribution
pathToIso2Mesh = './externalDependencies/iso2mesh/';

load ./data/model_Original.mat
addpath ('./externalDependencies/WOBJ_toolbox_Version2b/');
addpath (genpath('./core/'));

if is_octave()
  % Geometry package from Octave-forge is required
  pkg load geometry  
  % There seems to be a bug in "faceNormal" function in geometry-3.0.0 package
  % This just copies normalizeVector.m to normalizeVector3d.m as a fix
  addpath ('./externalDependencies/octave_geometry_patch/');
end

% Plot details
bPlot = 1;
bPlot_jointAxes = 1;
bPlot_landmarks = 1;
bPlot_markers = 1;

% Test Iso2mesh dependency
if ~isempty (pathToIso2Mesh)
    addpath(pathToIso2Mesh);
    testRes = fnc_testIso2MeshDist (model_Original);
    if testRes == 1
        disp (' - Not able to run test code for Iso2Mesh distribution.');
        disp ('   -- Mesh resampling has been disabled.');
        bResampling = 0;
    else
        bResampling = 1;
    end
else
    disp (' - Iso2Mesh distribution not provided.');
    disp ('   -- Mesh resampling has been disabled.')
    bResampling = 0;
end

%% Resample meshes %%
model_current = model_Original;
model_resampled = model_Original;
meshID_start = 1;
meshID_end   = length(model_resampled);

% Resample meshes
for meshID = meshID_start:meshID_end
    [model_resampled(meshID).vertices_global,...
        model_resampled(meshID).faces] =...
        fnc_remesh(model_resampled(meshID).vertices_global,...
        model_resampled(meshID).faces, resample_value);
    model_resampled(meshID).vertices_centered = ...
        model_resampled(meshID).vertices_global - ...
        repmat(mean(model_resampled(meshID).vertices_global),...
        length(model_resampled(meshID).vertices_global),1);
end

% Relocate landmarks
for meshID = meshID_start:meshID_end
    for idx = 1:length(model_current(meshID).LandmarkNames)
        l_idx = model_current(meshID).LandmarkIndices(idx);
        orig_landmarkPos = model_current(meshID).vertices_global(l_idx,:);
        dist_xyz = model_resampled(meshID).vertices_global ...
            - repmat(orig_landmarkPos, ...
            length(model_resampled(meshID).vertices_global), 1);
        dist_abs = sqrt(sum(dist_xyz.^2,2));
        [min_dist, idx_dist] = min(dist_abs);
        model_resampled(meshID).LandmarkIndices(idx) = idx_dist;
        clear dist_abs dist_xyz min_dist idx_dist l_idx
    end
end

% Update fixed indices (Femoral Sockets and Femoral Condyles)
for idx = 1:length(model_current(2).femoralSocket)
    orig_landmarkPos = ...
        model_current(2).vertices_global...
        (model_current(2).femoralSocket(idx),:);
    dist_xyz = model_resampled(2).vertices_global ...
        - repmat(orig_landmarkPos, ...
        length(model_resampled(2).vertices_global), 1);
    dist_abs = sqrt(sum(dist_xyz.^2,2));
    [min_dist, idx_dist] = min(dist_abs);
    model_resampled(2).femoralSocket(idx) = idx_dist;
end
for idx = 1:length(model_current(3).femoralSocket)
    orig_landmarkPos = ...
        model_current(3).vertices_global...
        (model_current(3).femoralSocket(idx),:);
    dist_xyz = model_resampled(3).vertices_global ...
        - repmat(orig_landmarkPos,...
        length(model_resampled(3).vertices_global), 1);
    dist_abs = sqrt(sum(dist_xyz.^2,2));
    [min_dist, idx_dist] = min(dist_abs);
    model_resampled(3).femoralSocket(idx) = idx_dist;
end
for idx = 1:length(model_current(4).femoralCondyles)
    orig_landmarkPos = ...
        model_current(4).vertices_global...
        (model_current(4).femoralCondyles(idx),:);
    dist_xyz = model_resampled(4).vertices_global ...
        - repmat(orig_landmarkPos,...
        length(model_resampled(4).vertices_global), 1);
    dist_abs = sqrt(sum(dist_xyz.^2,2));
    [min_dist, idx_dist] = min(dist_abs);
    model_resampled(4).femoralCondyles(idx) = idx_dist;
end
for idx = 1:length(model_current(5).femoralCondyles)
    orig_landmarkPos = ...
        model_current(5).vertices_global...
        (model_current(5).femoralCondyles(idx),:);
    dist_xyz = model_resampled(5).vertices_global ...
        - repmat(orig_landmarkPos,...
        length(model_resampled(5).vertices_global), 1);
    dist_abs = sqrt(sum(dist_xyz.^2,2));
    [min_dist, idx_dist] = min(dist_abs);
    model_resampled(5).femoralCondyles(idx) = idx_dist;
end
% Recompute markers
model_resampled = fnc_updateMarkers (model_resampled);

%% Scale Model %%
model_scaled = model_resampled;
% Compute Scaling Factors
VHP_Navel = 0.115;
VHP_lengths = [...
    VHP_Navel-model_Original(4).joint_axes_global(3,4)
    model_Original(4).joint_axes_global(3,4)-...
    model_Original(6).joint_axes_global(3,4)
    model_Original(8).joint_axes_global(3,4)-...
    model_Original(12).joint_axes_global(3,4)
    max(model_Original(46).vertices_global(:,1))-...
    min(model_Original(14).vertices_global(:,1))
    ];
deLeva_lengthRatios = [
    0.1815  % Pelvis
    0.3685  % Thigh
    0.4323  % Shank
    0.2283  % Foot
    ]./1.735;
deLeva_lengths = deLeva_lengthRatios*inputHeight;
segmentTypeRelScaling = deLeva_lengths./VHP_lengths;
segmentRelScaling = [
    segmentTypeRelScaling(1) ... % Sacrum + Pelvis
    segmentTypeRelScaling(2) segmentTypeRelScaling(2)... % Femur
    segmentTypeRelScaling(2) segmentTypeRelScaling(2)... % Patella
    segmentTypeRelScaling(3) segmentTypeRelScaling(3)... % Tibia
    segmentTypeRelScaling(4) segmentTypeRelScaling(4)]; % Feet
% model_scaled = fnc_updateJointAxes (model_scaled, segmentRelScaling);
model_scaled = fnc_updateMarkers (model_scaled);

if bPlot
    clf;
    %% Plot results %%
    model_current = model_scaled;
    h1 = subplot(1,2,1);
    title ('Original');
    fnc_plotModel (model_Original, 1, bPlot_jointAxes, ...
        bPlot_landmarks, bPlot_markers);
    
    h2 = subplot(1,2,2);
    title('Current');
    fnc_plotModel (model_current, 1, bPlot_jointAxes, ...
        bPlot_landmarks, bPlot_markers);
end

%% Export options %%
if ~isempty(outputLuaFile)
    luaStruct = fnc_getLuaStruct (model_current, 1);
    fnc_writeLUAFile (luaStruct, outputLuaFile, ...
        './meshes/obj/');
    
    if ~isdir([pwd,'/export/meshes/obj/'])
        mkdir([pwd,'/export/meshes/obj/']);
    end
    ObjSavePath = [pwd,...
        '/export/meshes/obj/'];
    fnc_exportObj (luaStruct, ObjSavePath);
end

if bExport_ObjMeshes
    luaStruct = fnc_getLuaStruct (model_current, 1);
    if ~isdir([pwd,'/export/meshes/obj/'])
        mkdir([pwd,'/export/meshes/obj/']);
    end
    ObjSavePath = [pwd,...
        '/export/meshes/obj/'];
    fnc_exportObj (luaStruct, ObjSavePath);    
end

if bExport_StlMeshes
    if ~isdir([pwd,'/export/meshes/stl/'])
        mkdir([pwd,'/export/meshes/stl/']);
    end
    for boneID = 1:length(model_current)
        fileName = [pwd,'/export/meshes/stl/',...
            model_current(boneID).BoneName,'.stl'];
        savestl(model_current(boneID).vertices_centered,...
            model_current(boneID).faces, fileName)
    end
end
