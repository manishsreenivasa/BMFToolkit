function model = fnc_jointCoord_CalcaneusR (model,DoF_Types)
% Bone Mesh Female Toolkit 
% Licensed under the zlib license. See LICENSE for more details.

RFt1MA = model(26).vertices_global(model(26).LandmarkIndices(1),:);
RFt5MA = model(34).vertices_global(model(34).LandmarkIndices(1),:);

% Talocalcaneal Positive X axis
vec_OX_talocalcaneal = mean([RFt1MA;RFt5MA]) -...
    mean(model(14).vertices_global(model(14).LandmarkIndices,:));
vec_OX_talocalcaneal = vec_OX_talocalcaneal./norm(vec_OX_talocalcaneal);
model(14).vec_OX_talocalcaneal = vec_OX_talocalcaneal;
vec_OY_talocalcaneal = model(12).vec_OY_talocruralR;
vec_OZ_talocalcaneal = cross(vec_OX_talocalcaneal,vec_OY_talocalcaneal);
vec_OZ_talocalcaneal = vec_OZ_talocalcaneal./norm(vec_OZ_talocalcaneal);
vec_OY_talocalcaneal = cross(vec_OZ_talocalcaneal,vec_OX_talocalcaneal);
% Column-major rotation matrix from unit vectors
jointAxes_talocalcanealR_global    = [[vec_OX_talocalcaneal';0] ...
    [vec_OY_talocalcaneal';0] [vec_OZ_talocalcaneal';0]...
    [model(12).joint_axes_global(1:3,4);1]];
jointAxes_talocalcanealR_in_talocruralR = ...
    [[jointAxes_talocalcanealR_global(1:3,1:3)'*...
    model(12).joint_axes_global(1:3,1:3)] [0.0 0.0 0.0]'; 0 0 0 1];
model(14).joint_axes_global     = jointAxes_talocalcanealR_global;
model(14).joint_axes_local      = jointAxes_talocalcanealR_in_talocruralR;
model(14).joint_axes_local(1:3,1:3)...
                                   = model(14).joint_axes_local(1:3,1:3)...
                                   *rot_y(pi/12);
model(14).parentID                 = 12;
model(14).joint                    = DoF_Types.DoF_XROT;
model(14).vertices_centered        = model(14).vertices_global...
    - repmat(median(model(14).vertices_global),...
    length(model(14).vertices_global), 1);
model(14).mesh_offset = [0.0 max(model(14).vertices_centered(:,2))*0.2...
    min(model(14).vertices_centered(:,3))*1.2];