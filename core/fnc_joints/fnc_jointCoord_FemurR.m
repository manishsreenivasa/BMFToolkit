function model = fnc_jointCoord_FemurR (model,DoF_Types)
% Bone Mesh Female Toolkit 
% Licensed under the zlib license. See LICENSE for more details.

jointCenter_femurR_global =...
    mean(model(2).vertices_global(model(2).femoralSocket,:));
model(4).femur_pointCd_r =...
    mean(model(4).vertices_global(model(4).femoralCondyles,:));
% Femur positive Z axis = center of condyles - hip center
vec_OZ = jointCenter_femurR_global - model(4).femur_pointCd_r;
vec_OZ = vec_OZ./norm(vec_OZ);
% Femur positive Y axis
vec_OY = jointCenter_femurR_global-...
    model(4).vertices_global(model(4).LandmarkIndices(2),:);
vec_OY = vec_OY./norm(vec_OY);
% Femur positive X axis
vec_OX = cross(vec_OY,vec_OZ);
vec_OX = vec_OX./norm(vec_OX);
vec_OY = cross(vec_OZ,vec_OX); % To orthogonalize the frame
model(4).vec_OY_femurR = vec_OY;
% Column-major rotation matrix from unit vectors
jointAxes_femurR_global = [[vec_OX';0] [vec_OY';0] [vec_OZ';0]...
    [jointCenter_femurR_global';1]];
% Relative transformation matrix
% P^2_1 = [R'_2 * R_1 t_12; 0 1], where t_12 = t^2_1 - t^2_2
rel_center = [model(2).joint_axes_global(1:3,1:3)'*...
    jointCenter_femurR_global'-model(2).joint_axes_global(1:3,4)];
jointAxes_femurR_in_pelvisR  = [[jointAxes_femurR_global(1:3,1:3)'*...
    model(2).joint_axes_global(1:3,1:3)] rel_center; 0 0 0 1];
model(4).joint_axes_local    = jointAxes_femurR_in_pelvisR;
model(4).joint_axes_global   = jointAxes_femurR_global;
model(4).parentID            = 2;
model(4).joint = [DoF_Types.DoF_XROT; DoF_Types.DoF_YROT;...
    DoF_Types.DoF_ZROT];
model(4).vertices_centered   = model(4).vertices_global -...
    repmat(median(model(4).vertices_global),...
    length(model(4).vertices_global), 1);
model(4).mesh_offset = [min(model(4).vertices_centered(:,1))*0.33...
    min(model(4).vertices_centered(:,2))*0.282...
    min(model(4).vertices_centered(:,3))*0.58];