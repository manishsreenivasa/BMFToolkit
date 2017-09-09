function model = fnc_jointCoord_TibiaL (model,DoF_Types)
% Bone Mesh Female Toolkit 
% Licensed under the zlib license. See LICENSE for more details.

talocrural_l_pointMedial = ...
    model(9).vertices_global(model(9).LandmarkIndices(3),:);
talocrural_l_pointLateral = ...
    model(11).vertices_global(model(11).LandmarkIndices(3),:);
jointCenter_talocruralL_global = ...
    mean([talocrural_l_pointLateral; talocrural_l_pointMedial]);
jointCenter_tibiaL_global = model(5).femur_pointCd_l;
% Tibial positive Z axis
vec_OZ = jointCenter_tibiaL_global-jointCenter_talocruralL_global;
vec_OZ = vec_OZ./norm(vec_OZ);
% Tibial positive Y axis - From Knee landmarks
vec_OY = model(5).vec_OY_femurL;
vec_OY = vec_OY./norm(vec_OY);
% Tibial positive X axis
vec_OX = cross(vec_OY,vec_OZ);
vec_OX = vec_OX./norm(vec_OX);
vec_OZ = cross(vec_OX,vec_OY); % To orthogonalize the frame
% Column-major rotation matrix from unit vectors
jointAxes_tibiaL_global     = [[vec_OX';0] [vec_OY';0] [vec_OZ';0]...
    [jointCenter_tibiaL_global';1]];
jointAxes_tibiaL_in_femurL  = [[jointAxes_tibiaL_global(1:3,1:3)'*...
    model(5).joint_axes_global(1:3,1:3)] ...
    [jointCenter_tibiaL_global'-model(5).joint_axes_global(1:3,4)]; ...
    0 0 0 1];
model(9).joint_axes_global  = jointAxes_tibiaL_global;
model(9).joint_axes_local   = jointAxes_tibiaL_in_femurL;
model(9).parentID           = 5;
model(9).joint              = [DoF_Types.DoF_YROT];
model(9).vertices_centered  = model(9).vertices_global - ...
    repmat(median(model(9).vertices_global), ...
    length(model(9).vertices_global), 1);
model(9).mesh_offset = [0.0 0.0 ...
    min(model(9).vertices_centered(:,3))*0.645];