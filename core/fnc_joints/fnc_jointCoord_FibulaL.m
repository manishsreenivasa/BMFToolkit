function model = fnc_jointCoord_FibulaL (model,DoF_Types)
% Bone Mesh Female Toolkit 
% Licensed under the zlib license. See LICENSE for more details.

jointCenter_fibulaL_global         =...
    model(11).vertices_global(model(11).LandmarkIndices(1),:);
jointAxes_fibulaL_global           = eye(4);
jointAxes_fibulaL_global(1:3,1:3)  = model(9).joint_axes_global(1:3,1:3);
jointAxes_fibulaL_global(1:3,4)    = jointCenter_fibulaL_global;
jointAxes_fibulaL_in_tibiaL = [[jointAxes_fibulaL_global(1:3,1:3)'*...
    model(9).joint_axes_global(1:3,1:3)] ...
    [jointCenter_fibulaL_global'-model(9).joint_axes_global(1:3,4)];...
    0 0 0 1];
model(11).joint_axes_global        = jointAxes_fibulaL_global;
model(11).joint_axes_local         = jointAxes_fibulaL_in_tibiaL;
model(11).parentID                 = 9;
model(11).joint                    = [];
model(11).vertices_centered        = model(11).vertices_global -...
    repmat(median(model(11).vertices_global),...
    length(model(11).vertices_global), 1);
model(11).mesh_offset = [0.0 0.0 ...
    min(model(11).vertices_centered(:,3))*0.9];