function call_resampleMeshes (buttonHandle, ~, ~)
% Bone Mesh Female Toolkit
% Licensed under the zlib license. See LICENSE for more details.

h = waitbar(0,'Resampling');

model_current   = buttonHandle.Parent.UserData.model_orig;
model_resampled = buttonHandle.Parent.UserData.model_orig;

boneNames = findobj('Tag','popup_menuBones');
boneNr = boneNames.Value;
buttonHandle.Parent.UserData.slider_resample...
    = findobj('Tag','slider_resample');
resample_value = buttonHandle.Parent.UserData.slider_resample.Value;

% Enable Undo and Restore Original Data (For Undo)
buttonHandle.Parent.UserData.model_undo = ...
    buttonHandle.Parent.UserData.model_current;
pushbutton_Undo = findobj('Tag','pushbutton_Undo');
pushbutton_Undo.Enable ='on' ;
pushbutton_Reset = findobj('Tag','pushbutton_Reset');
pushbutton_Reset.Enable ='on';

% Put Value on the Action Window
action = findobj('Tag','listbox_actionHistory');
selectedBone = boneNames.String(boneNames.Value);
name_action = ['Resampling ' selectedBone{:} ' with factor: '...
    num2str(resample_value)];
action.String{length(action.String)+1} = name_action;
drawnow;

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
    waitbar(meshID/meshID_end,h,'Resampling');
    drawnow;
end
waitbar(1.0,h);
close(h)
action.String{length(action.String)+1} = ' - Finished resampling';
drawnow;

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

action.String{length(action.String)+1} =' - Finished relocating landmarks';
drawnow;

buttonHandle.Parent.UserData.model_resampled = model_resampled;
if buttonHandle.Parent.UserData.inputHeight(1) == 0
    buttonHandle.Parent.UserData.model_current = model_resampled;
    % Update plots
    call_updatePlots (buttonHandle);
else
    lastScale = findobj('Tag','input_scaleHeight');
    lastScale.String = ...
        num2str(buttonHandle.Parent.UserData.inputHeight(1));
    call_pushScale(findobj('Tag','push_scale'))
end
end