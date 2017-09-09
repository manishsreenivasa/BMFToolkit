function model = fnc_jointCoord_TibiaR (model,DoF_Types)
% Bone Mesh Female Toolkit 
% Licensed under the zlib license. See LICENSE for more details.

talocrural_r_pointMedial = ...
    model(8).vertices_global(model(8).LandmarkIndices(3),:);
talocrural_r_pointLateral = ...
    model(10).vertices_global(model(10).LandmarkIndices(3),:);
jointCenter_talocruralR_global = ...
    mean([talocrural_r_pointLateral; talocrural_r_pointMedial]);
jointCenter_tibiaR_global = model(4).femur_pointCd_r;
% Tibial positive Y axis - From Knee landmarks
vec_OY = model(4).vec_OY_femurR;
vec_OY = vec_OY./norm(vec_OY);
% Tibial positive Z axis
vec_OZ = jointCenter_tibiaR_global - jointCenter_talocruralR_global;
vec_OZ = vec_OZ./norm(vec_OZ);
% Tibial positive X axis
vec_OX = cross(vec_OY,vec_OZ);
vec_OX = vec_OX./norm(vec_OX);
vec_OZ = cross(vec_OX,vec_OY); % To orthogonalize the frame
% Column-major rotation matrix from unit vectors
jointAxes_tibiaR_global   = [[vec_OX';0] [vec_OY';0] [vec_OZ';0] ...
    [jointCenter_tibiaR_global';1]];
jointAxes_tibiaR_in_femurR  = [[jointAxes_tibiaR_global(1:3,1:3)'*...
    model(4).joint_axes_global(1:3,1:3)] ...
    [jointCenter_tibiaR_global'-model(4).joint_axes_global(1:3,4)];...
    0 0 0 1];
model(8).joint_axes_global  = jointAxes_tibiaR_global;
model(8).joint_axes_local   = jointAxes_tibiaR_in_femurR;
model(8).parentID           = 4;
model(8).joint              = [DoF_Types.DoF_YROT];
model(8).vertices_centered  = model(8).vertices_global -...
    repmat(median(model(8).vertices_global), ...
    length(model(8).vertices_global), 1);
model(8).mesh_offset        = [0.0 0.0 ...
    min(model(8).vertices_centered(:,3))*0.645];