function model = fnc_jointCoord_PelvisR (model, DoF_Types)
% Bone Mesh Female Toolkit 
% Licensed under the zlib license. See LICENSE for more details.

SARSN = model(1).vertices_global(model(1).LandmarkIndices(3),:);
jointCenter_pelvisR_x = SARSN(1);
jointCenter_pelvisR_y = SARSN(2)*1.5;
jointCenter_pelvisR_z = SARSN(3)*0.5;
jointCenter_pelvisR_global = [jointCenter_pelvisR_x ...
    jointCenter_pelvisR_y jointCenter_pelvisR_z];
jointAxes_pelvisR_global = [model(1).joint_axes_global(1:3,1:3)...
    jointCenter_pelvisR_global'; 0 0 0 1];
% Relative transformation matrix
% P^2_1 = [R'_2 * R_1 t_12; 0 1], where t_12 = t^2_1 - t^2_2
rel_center = [model(1).joint_axes_global(1:3,1:3)'*...
    jointCenter_pelvisR_global'-model(1).joint_axes_global(1:3,4)];
jointAxes_pelvisR_in_sacrum = [[jointAxes_pelvisR_global(1:3,1:3)'*...
    model(1).joint_axes_global(1:3,1:3)] rel_center; 0 0 0 1];
model(2).joint_axes_global  = jointAxes_pelvisR_global;
model(2).joint_axes_local   = jointAxes_pelvisR_in_sacrum;
model(2).parentID           = 1;
model(2).joint              = [];
model(2).vertices_centered  = model(2).vertices_global -...
    repmat(median(model(2).vertices_global),...
    length(model(2).vertices_global), 1);
model(2).mesh_offset = [-min(model(2).vertices_centered(:,1))*0.5 ...
    min(model(2).vertices_centered(:,2))*0.32...
    min(model(2).vertices_centered(:,3))*0.35];