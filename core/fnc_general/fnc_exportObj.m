function fnc_exportObj (model, ObjSavePath)
% Bone Mesh Female Toolkit
% Licensed under the zlib license. See LICENSE for more details.

warning off;
if ~is_octave()
    h = waitbar(0,'Exporting meshes');
end

if ~isdir(ObjSavePath)
    mkdir(ObjSavePath);
end

meshID_start = 1;
meshID_end   = length(model);

rot_mat = [1 0 0; 0 cos(pi/2) -sin(pi/2); 0 sin(pi/2) cos(pi/2)];
for meshID = meshID_start:meshID_end
    if ~is_octave()
        waitbar(meshID/meshID_end,h,'Exporting Obj meshes');
    end
    for i = 1:length(model(meshID).vertices_centered)
        rot_vertices_for_obj(i,:) = ...
            model(meshID).vertices_centered(i,:)*rot_mat;
    end
    if ~is_octave()
      TR = triangulation (model(meshID).faces, rot_vertices_for_obj);
      VN = vertexNormal(TR);
    else
      VN = vertexNormal(rot_vertices_for_obj, model(meshID).faces);
    end
    OBJ.vertices = rot_vertices_for_obj;
    OBJ.vertices_normal = VN;
    OBJ.objects(1).type = 'f';
    OBJ.objects(1).data.vertices = model(meshID).faces;
    OBJ.objects(1).data.normal = model(meshID).faces;
    write_wobj (OBJ, [ObjSavePath,model(meshID).mesh_obj]);
    clear OBJ VN TR filename rot_vertices_for_obj
end
if ~is_octave()
    close(h);
end
end