function model = fnc_jointCoord_FeetFused (model,DoF_Types)
% Bone Mesh Female Toolkit 
% Licensed under the zlib license. See LICENSE for more details.

% Navicular R and L
for i = 16:17
    model(i).parentID           = i-2;
    childVertCenter_global      = median(model(i).vertices_global);
    model(i).joint_axes_global  = ...
    [model(model(i).parentID).joint_axes_global(1:3,1:3) ...
    childVertCenter_global';
        0 0 0 1];
    rel_center = model(i).joint_axes_global(1:3,4)-...
        model(model(i).parentID).joint_axes_global(1:3,4);
    model(i).joint_axes_local   = [eye(3) rel_center; 0 0 0 1];
    model(i).joint              = [];
    model(i).vertices_centered  = model(i).vertices_global -...
        repmat(median(model(i).vertices_global),...
        length(model(i).vertices_global), 1);
    model(i).mesh_offset = [max(model(i).vertices_centered(:,1))*0.5...
        0.0 0.0];
end

% Cuboid R and L
for i = 18:19
    model(i).parentID           = i-2;
    childVertCenter_global      = median(model(i).vertices_global);
    model(i).joint_axes_global  = ...
        [model(model(i).parentID).joint_axes_global(1:3,1:3)...
        childVertCenter_global';
        0 0 0 1];
    rel_center = model(i).joint_axes_global(1:3,4)-...
        model(model(i).parentID).joint_axes_global(1:3,4);
    model(i).joint_axes_local   = [eye(3) rel_center; 0 0 0 1];
    model(i).joint              = [];
    model(i).vertices_centered  = model(i).vertices_global -...
        repmat(median(model(i).vertices_global),...
        length(model(i).vertices_global), 1);
    model(i).mesh_offset        = [0.0 0.0 0.0];
end

% Medial Cuneiform R and L
for i = 20:21
    model(i).parentID           = i-4;
    childVertCenter_global      = median(model(i).vertices_global);
    model(i).joint_axes_global  =...
        [model(model(i).parentID).joint_axes_global(1:3,1:3)...
        childVertCenter_global';
        0 0 0 1];
    rel_center = model(i).joint_axes_global(1:3,4)-...
        model(model(i).parentID).joint_axes_global(1:3,4);
    model(i).joint_axes_local   = [eye(3) rel_center; 0 0 0 1];
    model(i).joint              = [];
    model(i).vertices_centered  = model(i).vertices_global -...
        repmat(median(model(i).vertices_global),...
        length(model(i).vertices_global), 1);
    model(i).mesh_offset        = [0.0 0.0 0.0];
end

% Intermediate Cuneiforms and Metatarsals
for i = 22:35
    model(i).parentID           = i-2;
    childVertCenter_global      = median(model(i).vertices_global);
    model(i).joint_axes_global  =...
    [model(model(i).parentID).joint_axes_global(1:3,1:3)...
    childVertCenter_global';
        0 0 0 1];
    rel_center = model(i).joint_axes_global(1:3,4)-...
        model(model(i).parentID).joint_axes_global(1:3,4);
    model(i).joint_axes_local   = [eye(3) rel_center; 0 0 0 1];
    model(i).joint              = [];
    model(i).vertices_centered  = model(i).vertices_global -...
        repmat(median(model(i).vertices_global),...
        length(model(i).vertices_global), 1);
    model(i).mesh_offset        = [0.0 0.0 0.0];
end

% Proximal Phalanx
for i = 36:45
    model(i).parentID           = i-2;
    childVertCenter_global      = median(model(i).vertices_global);
    model(i).joint_axes_global  = ...
        [model(model(i).parentID).joint_axes_global(1:3,1:3)...
        childVertCenter_global';
        0 0 0 1];
    rel_center = model(i).joint_axes_global(1:3,4)-...
        model(model(i).parentID).joint_axes_global(1:3,4);
    model(i).joint_axes_local   = [eye(3) rel_center; 0 0 0 1];
    model(i).joint              = [];
    model(i).vertices_centered  = model(i).vertices_global -...
        repmat(median(model(i).vertices_global),...
    length(model(i).vertices_global), 1);
    model(i).mesh_offset        = [0.0 0.0 0.0];
end

% Mid Phalanx
for i = 46:54
    model(i).parentID           = i-2;
    childVertCenter_global      = median(model(i).vertices_global);
    model(i).joint_axes_global  = ...
        [model(model(i).parentID).joint_axes_global(1:3,1:3)...
        childVertCenter_global';
        0 0 0 1];
    rel_center = model(i).joint_axes_global(1:3,4)-...
        model(model(i).parentID).joint_axes_global(1:3,4);
    model(i).joint_axes_local   = [eye(3) rel_center; 0 0 0 1];
    model(i).joint              = [];
    model(i).vertices_centered  = model(i).vertices_global -...
        repmat(median(model(i).vertices_global), ...
        length(model(i).vertices_global), 1);
    model(i).mesh_offset        = [0.0 0.0 0.0];
end

% Dist Phalanx
for i = 55:63
    model(i).parentID           = i-2;
    childVertCenter_global      = median(model(i).vertices_global);
    model(i).joint_axes_global  = ...
        [model(model(i).parentID).joint_axes_global(1:3,1:3)...
        childVertCenter_global';
        0 0 0 1];
    rel_center = model(i).joint_axes_global(1:3,4)-...
        model(model(i).parentID).joint_axes_global(1:3,4);
    model(i).joint_axes_local   = [eye(3) rel_center; 0 0 0 1];
    model(i).joint              = [];
    model(i).vertices_centered  = model(i).vertices_global -...
        repmat(median(model(i).vertices_global), ...
        length(model(i).vertices_global), 1);
    model(i).mesh_offset        = [0.0 0.0 0.0];
end