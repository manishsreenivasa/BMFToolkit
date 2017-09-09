function model = fnc_jointCoord_Sacrum (model,DoF_Types,ROOT_axes)
% Bone Mesh Female Toolkit 
% Licensed under the zlib license. See LICENSE for more details.

RPASIS = model(2).vertices_global(model(2).LandmarkIndices(1),:);
RPPSIS = model(2).vertices_global(model(2).LandmarkIndices(2),:);
LPASIS = model(3).vertices_global(model(3).LandmarkIndices(1),:);
LPPSIS = model(3).vertices_global(model(3).LandmarkIndices(2),:);

jointCenter_sacrum_z = mean([RPASIS;RPPSIS]);
jointCenter_sacrum_xy = mean([RPPSIS;LPPSIS;RPASIS;LPASIS;]);
jointCenter_sacrum_global = [jointCenter_sacrum_xy(1:2) ...
    jointCenter_sacrum_z(3)];

% Sacrum positive Y axis = LPASIS - RPASIS;
vec_OY = LPASIS - RPASIS;
vec_OY = vec_OY./norm(vec_OY);
% Sacrum ZY axis = LPASIS - LPPSIS;
vec_in_sacrumPlane = LPASIS - LPPSIS;
vec_in_sacrumPlane = vec_in_sacrumPlane./norm(vec_in_sacrumPlane);
% Sacrum positive Z axis
vec_OZ = cross(vec_in_sacrumPlane,vec_OY);
vec_OZ = vec_OZ./norm(vec_OZ);
% Sacrum positive X axis
vec_OX = cross(vec_OY,vec_OZ);
vec_OX = vec_OX./norm(vec_OX);
% Column-major rotation matrix from unit vectors
jointAxes_sacrum_global = [[vec_OX';0] [vec_OY';0] [vec_OZ';0]...
    [jointCenter_sacrum_global';1]];
% Relative transformation matrix
% P^2_1 = [R'_2 * R_1 t_12; 0 1], where t_12 = t^2_1 - t^2_2
rel_center = [ROOT_axes(1:3,1:3)'*jointCenter_sacrum_global'-...
    ROOT_axes(1:3,4)];
jointAxes_Sacrum_in_ROOT    = [[jointAxes_sacrum_global(1:3,1:3)'*...
    ROOT_axes(1:3,1:3)] rel_center; 0 0 0 1];
model(1).joint_axes_global  = jointAxes_sacrum_global;
model(1).joint_axes_local   = jointAxes_Sacrum_in_ROOT;
model(1).ROOT_axes          = ROOT_axes;
model(1).parentID           = 0;
model(1).mesh_offset        = [0 0 0];
model(1).joint              = DoF_Types.DoF_ROOT;
model(1).vertices_centered  = model(1).vertices_global -...
    repmat(median(model(1).vertices_global),...
    length(model(1).vertices_global), 1);
model(1).mesh_offset        = -[max(model(1).vertices_centered(:,1))*0.8...
    0.0 max(model(1).vertices_centered(:,3))*0.1];