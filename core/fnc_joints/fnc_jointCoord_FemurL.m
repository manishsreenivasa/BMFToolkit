function model = fnc_jointCoord_FemurL (model,DoF_Types)
% Bone Mesh Female Toolkit 
% Licensed under the zlib license. See LICENSE for more details.

jointCenter_femurL_global = ...
    mean(model(3).vertices_global(model(3).femoralSocket,:));
model(5).femur_pointCd_l = ...
    mean(model(5).vertices_global(model(5).femoralCondyles,:));
vec_OZ = jointCenter_femurL_global - model(5).femur_pointCd_l;
vec_OZ = vec_OZ./norm(vec_OZ);
% Femur positive Y axis
vec_OY = model(5).vertices_global(model(5).LandmarkIndices(2),:)-...
    jointCenter_femurL_global;
vec_OY = vec_OY./norm(vec_OY);
% Femur positive X axis
vec_OX = cross(vec_OY,vec_OZ);
vec_OX = vec_OX./norm(vec_OX);
vec_OY = cross(vec_OZ,vec_OX); % To orthogonalize the frame
model(5).vec_OY_femurL = vec_OY;
% Column-major rotation matrix from unit vectors
jointAxes_femurL_global = [[vec_OX';0] [vec_OY';0] [vec_OZ';0] ...
    [jointCenter_femurL_global';1]];
% Relative transformation matrix
% P^2_1 = [R'_2 * R_1 t_12; 0 1], where t_12 = t^2_1 - t^2_2
rel_center = [model(3).joint_axes_global(1:3,1:3)'*...
    jointCenter_femurL_global'-model(3).joint_axes_global(1:3,4)];
jointAxes_femurL_in_pelvisL     = [[jointAxes_femurL_global(1:3,1:3)'*...
    model(3).joint_axes_global(1:3,1:3)] rel_center; 0 0 0 1];
model(5).joint_axes_global      = jointAxes_femurL_global;
model(5).joint_axes_local       = jointAxes_femurL_in_pelvisL;
model(5).parentID               = 3;
model(5).joint                  = [DoF_Types.DoF_XROT; ...
    DoF_Types.DoF_YROT; DoF_Types.DoF_ZROT];
model(5).vertices_centered      = model(5).vertices_global -...
    repmat(median(model(5).vertices_global), ...
    length(model(5).vertices_global), 1);
model(5).mesh_offset = [min(model(5).vertices_centered(:,1))*0.33 ...
    max(model(5).vertices_centered(:,2))*0.282...
    min(model(5).vertices_centered(:,3))*0.58];