function model = fnc_jointCoord_CalcaneusL (model,DoF_Types)
% Bone Mesh Female Toolkit
% Licensed under the zlib license. See LICENSE for more details.

LFt1MA = model(27).vertices_global(model(27).LandmarkIndices(1),:);
LFt5MA = model(35).vertices_global(model(35).LandmarkIndices(1),:);

% Talocalcaneal Positive X axis
vec_OX_talocalcaneal = mean([LFt1MA;LFt5MA]) - ...
    mean(model(15).vertices_global(model(15).LandmarkIndices,:));
vec_OX_talocalcaneal = vec_OX_talocalcaneal./norm(vec_OX_talocalcaneal);
model(15).vec_OX_talocalcaneal = vec_OX_talocalcaneal;
vec_OY_talocalcaneal = model(13).vec_OY_talocruralL;
vec_OZ_talocalcaneal = cross(vec_OX_talocalcaneal,vec_OY_talocalcaneal);
vec_OZ_talocalcaneal = vec_OZ_talocalcaneal./norm(vec_OZ_talocalcaneal);
% Column-major rotation matrix from unit vectors
jointAxes_talocalcanealL_global    = [[vec_OX_talocalcaneal';0] ...
    [vec_OY_talocalcaneal';0] [vec_OZ_talocalcaneal';0]...
    [model(13).joint_axes_global(1:3,4);1]];
jointAxes_talocalcanealL_in_talocruralL = ...
    [[jointAxes_talocalcanealL_global(1:3,1:3)'*...
    model(13).joint_axes_global(1:3,1:3)] [0 0 0]'; 0 0 0 1];
model(15).joint_axes_global = jointAxes_talocalcanealL_global;
model(15).joint_axes_local = jointAxes_talocalcanealL_in_talocruralL;
model(15).joint_axes_local(1:3,1:3)...
                      = model(15).joint_axes_local(1:3,1:3) * rot_y(pi/12);
model(15).parentID    = 13;
model(15).joint       = DoF_Types.DoF_XROT;
model(15).vertices_centered = model(15).vertices_global...
    - repmat(median(model(15).vertices_global),...
    length(model(15).vertices_global), 1);
model(15).mesh_offset = [0.0 -max(model(15).vertices_centered(:,2))*0.2...
    min(model(15).vertices_centered(:,3))*1.2];