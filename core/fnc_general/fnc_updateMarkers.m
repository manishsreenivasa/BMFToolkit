function model = fnc_updateMarkers (model)
% Bone Mesh Female Toolkit 
% Licensed under the zlib license. See LICENSE for more details.

% Sacrum
model(1).marker_names = {'SACR'};
model(1).marker_values(1,:) = [-model(1).mesh_dimension(1), 0.0, ...
    0.5*model(1).mesh_dimension(3)]; % SACR

% Right Pelvis
model(2).marker_names = {'RASI'};
model(2).marker_values(1,:) = [0.9*model(2).mesh_dimension(1), ...
    -0.7*model(2).mesh_dimension(2) , ...
    0.15*model(2).mesh_dimension(3)]; % RASI

% Left Pelvis
model(3).marker_names = {'LASI'};
model(3).marker_values(1,:) = [0.9*model(3).mesh_dimension(1), ...
    0.7*model(3).mesh_dimension(2) , 0.15*model(3).mesh_dimension(3)];%LASI

% Right Femur
model(4).marker_names = {'RTHI','RKNE','RKNE_md'};
model(4).marker_values(1,:) = [0.0 , -model(4).mesh_dimension(2), ...
    -0.33*model(4).mesh_dimension(3)];     % RTHI
model(4).marker_values(2,:) = [0.0 , -0.6*model(4).mesh_dimension(2) , ...
    -0.9*model(4).mesh_dimension(3)]; % RKNE         
model(4).marker_values(3,:) = [0.0 , 0.6*model(4).mesh_dimension(2) , ...
    -0.9*model(4).mesh_dimension(3)];  % RKNE_md         

% Left Femur
model(5).marker_names = {'LTHI','LKNE','LKNE_md'};
model(5).marker_values(1,:) = [0.0 , model(5).mesh_dimension(2), ...
    -0.33*model(5).mesh_dimension(3)];      % LTHI
model(5).marker_values(2,:) = [0.0 , 0.6*model(5).mesh_dimension(2) , ...
    -0.9*model(5).mesh_dimension(3)];  % LKNE         
model(5).marker_values(3,:) = [0.0 , -0.6*model(5).mesh_dimension(2) ,...
    -0.9*model(5).mesh_dimension(3)]; % LKNE_md         

% Right Tibia
model(8).marker_names = {'RTIB','RANK','RANK_md'};
model(8).marker_values(1,:) = [0.0 , -0.7*model(8).mesh_dimension(2), ...
    -0.33*model(8).mesh_dimension(3)]; % RTIB
model(8).marker_values(2,:) = [0.0 , -0.5*model(8).mesh_dimension(2) , ...
    -model(8).mesh_dimension(3)];     % RANK
model(8).marker_values(3,:) = [0.0 , 0.5*model(8).mesh_dimension(2) ,...
    -model(8).mesh_dimension(3)];      % RANK_md

% Left Tibia
model(9).marker_names = {'LTIB','LANK','LANK_md'};
model(9).marker_values(1,:) = [0.0 , 0.7*model(9).mesh_dimension(2),...
    -0.33*model(9).mesh_dimension(3)]; % LTIB
model(9).marker_values(2,:) = [0.0 , 0.5*model(9).mesh_dimension(2) ,...
    -model(9).mesh_dimension(3)];     % LANK
model(9).marker_values(3,:) = [0.0 , -0.5*model(9).mesh_dimension(2) ,...
    -model(9).mesh_dimension(3)];    % LANK_md

% Right Foot
RFt1MA = model(26).vertices_global(model(26).LandmarkIndices(1),:);
rel_pos_Rtoe = RFt1MA - model(14).joint_axes_global(1:3,4)';
model(14).marker_names = {'RANK','RANK_md','RTOE','RHEE'};
model(14).marker_values(1,:) = [0.0, -0.7*model(14).mesh_dimension(2),...
    0.0]; % RANK
model(14).marker_values(2,:) = [0.0, 0.7*model(14).mesh_dimension(2),...
    0.0];  % RANK_md
model(14).marker_values(3,:) = rel_pos_Rtoe;  % RTOE
model(14).marker_values(4,:) = [-0.5*model(14).mesh_dimension(1),...
    0.3*model(14).mesh_dimension(2),...
    -0.9*model(14).mesh_dimension(3)]; % RHEE

% Left Foot
LFt1MA = model(27).vertices_global(model(27).LandmarkIndices(1),:);
rel_pos_Ltoe = LFt1MA - model(15).joint_axes_global(1:3,4)';
model(15).marker_names = {'LANK','LANK_md','LTOE','LHEE'};
model(15).marker_values(1,:) = [0.0, 0.7*model(15).mesh_dimension(2),...
    0.0];  % LANK
model(15).marker_values(2,:) = [0.0, -0.7*model(15).mesh_dimension(2),...
    0.0]; % LANK_md
model(15).marker_values(3,:) = rel_pos_Ltoe; % LTOE
model(15).marker_values(4,:) = [-0.5*model(15).mesh_dimension(1),...
    -0.3*model(15).mesh_dimension(2),...
    -0.9*model(15).mesh_dimension(3)]; % LHEE