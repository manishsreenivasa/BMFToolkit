function luaStruct = fnc_getLuaStruct (model, boneNr)
% Bone Mesh Female Toolkit 
% Licensed under the zlib license. See LICENSE for more details.

if boneNr == 1
    meshID_start = 1;
    meshID_end   = length(model);
    
    luaStruct(1).parent   = 'ROOT';
    luaStruct(1).parentID = model(1).parentID;
elseif boneNr == 2
    meshID_start = 12;
    meshID_end   = length(model);
    
    luaStruct(1).parent   = 'ROOT';
    luaStruct(1).parentID = model(1).parentID;
    model(12).joint_axes_local(1:3,4) = [0 -0.1 0]';
    luaStruct(2).parent   = 'ROOT';
    luaStruct(2).parentID = model(2).parentID;
    model(13).joint_axes_local(1:3,4) = [0 0.1 0]';
    
    luaStruct(3).parent   = 'TalusR';
    luaStruct(3).parentID = 1;
    luaStruct(4).parent   = 'TalusL';
    luaStruct(4).parentID = 2;    
else
    meshID_start = boneNr - 2;
    meshID_end   = boneNr - 2;
    luaStruct(1).parent   = 'ROOT';
    luaStruct(1).parentID = model(1).parentID;
end

meshCounter = 1;
for meshID = meshID_start:meshID_end
    luaStruct(meshCounter).name = model(meshID).BoneName;
    
    if boneNr == 1 && meshCounter > 1
        luaStruct(meshCounter).parent   = ...
            model(model(meshID).parentID).BoneName;
        luaStruct(meshCounter).parentID = model(meshID).parentID;
    elseif boneNr == 2 && meshCounter > 2
        luaStruct(meshCounter).parent   = ...
            model(model(meshID).parentID).BoneName;
        luaStruct(meshCounter).parentID = model(meshID).parentID;
    end
    
    luaStruct(meshCounter).joint_axes_global ...
        = model(meshID).joint_axes_global;
    luaStruct(meshCounter).joint_r = ...
        model(meshID).joint_axes_local(1:3,4)';
    luaStruct(meshCounter).joint_E = ...
        model(meshID).joint_axes_local(1:3,1:3);
    luaStruct(meshCounter).joint = model(meshID).joint;
    
    luaStruct(meshCounter).landmarks       = model(meshID).landmarks;
    luaStruct(meshCounter).landmarkIndices = model(meshID).LandmarkIndices;
    luaStruct(meshCounter).landmarkNames   = model(meshID).LandmarkNames;
    luaStruct(meshCounter).landmarkDescriptions ...
        = model(meshID).LandmarkDescriptions;
    luaStruct(meshCounter).vertices_global = model(meshID).vertices_global;
    luaStruct(meshCounter).vertices_centered ...
        = model(meshID).vertices_centered;
    
    luaStruct(meshCounter).marker_names    = model(meshID).marker_names;
    luaStruct(meshCounter).marker_values   = model(meshID).marker_values;
    
    luaStruct(meshCounter).faces          = model(meshID).faces;
    luaStruct(meshCounter).mesh_dimension = ...
        max(model(meshID).vertices_centered) -...
        min(model(meshID).vertices_centered);
    luaStruct(meshCounter).mesh_color     = [0.4 0.8 0.4];
    luaStruct(meshCounter).mesh_center    = model(meshID).mesh_offset;
    
    luaStruct(meshCounter).mesh_obj = [model(meshID).BoneName,'.obj'];
    meshCounter = meshCounter + 1;
end