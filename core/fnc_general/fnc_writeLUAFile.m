function fnc_writeLUAFile (model, LUAFileName, pathToMeshes)
% Bone Mesh Female Toolkit 
% Licensed under the zlib license. See LICENSE for more details.

[fid] = fopen (LUAFileName,'wt');

fprintf(fid,'return {\n');

% Write global frame information
fprintf(fid,'gravity = { 0, 0, -9.81,},\n');
fprintf(fid,'configuration = {\n\taxis_front = { 1, 0, 0,},');
fprintf(fid,'\n\taxis_right = { 0, -1, 0,},');
fprintf(fid,'\n\taxis_up = { 0, 0, 1,},\n},');

% Write landmark information
fprintf (fid,'\npoints = {');
for i = 1:length(model)
    if ~isempty(model(i).landmarks)
        [nPoints,~] = size(model(i).landmarks);
        for l = 1:nPoints
            fprintf(fid,'\n\t{name = "%s", ',...
                char(model(i).landmarkNames(l)));
            fprintf(fid,'body = "%s", ', char(model(i).name));
            fprintf(fid,'point = {%6f, %6f, %6f,},},',...
                model(i).landmarks(l,1), model(i).landmarks(l,2),...
                model(i).landmarks(l,3));
        end
    end
end
fprintf(fid,'\n},');

% Write model information
fprintf(fid,'\nframes = {');
for i = 1:length(model)
    fprintf(fid,'\n\t{name   = "%s",', model(i).name);
    fprintf(fid,'\n\tparent = "%s",', model(i).parent);
    
    % Write joint frame
    fprintf(fid,'\n\tjoint_frame = {');
    fprintf(fid,'\n\t\tr = ');
    fnc_writeLUAMatrix (fid, model(i).joint_r, 1);
    fprintf(fid,'\n\t\tE = \n');
    fnc_writeLUAMatrix (fid, model(i).joint_E, 3); fprintf(fid,'\n\t},');

    % Write joint info
    fprintf(fid,'\n\tjoint= \n');
    [n1,~] = size(model(i).joint);
    if n1 == 1
        fprintf(fid,'{'); fnc_writeLUAMatrix (fid, model(i).joint,2);
        fprintf(fid,'},');
    else
        fnc_writeLUAMatrix(fid, model(i).joint, 2);
    end
    
    % Write markers
    fprintf (fid,'\n\tmarkers = {');
    [~,nMarkers] = size(model(i).marker_names);
    if size(nMarkers) > 0
        for l = 1:nMarkers
            fprintf(fid,'\n\t\t%s = ',char(model(i).marker_names(l)));
            fnc_writeLUAMatrix(fid, model(i).marker_values(l,:), 1)
        end
    end
    fprintf(fid,'},');
    
    % Write mesh visuals
    fprintf(fid,'\n\tvisuals = {{');
    fprintf(fid,'\n\t\tsrc         = "%s",', ...
        [pathToMeshes,model(i).mesh_obj]);
    fprintf(fid,'\n\t\tdimensions  = '); 
    fnc_writeLUAMatrix (fid, model(i).mesh_dimension, 1);
    fprintf(fid,'\n\t\tmesh_center = ');            
    fnc_writeLUAMatrix (fid, model(i).mesh_center, 1);
    fprintf(fid,'\n\t\tcolor       = ');            
    fnc_writeLUAMatrix (fid, model(i).mesh_color, 1);
    fprintf(fid,'\n\t\t},},\n\t},');
end

fprintf(fid,'\n\t},\n}');
fclose(fid);
end

function fnc_writeLUAMatrix(file, matrix, tabnumber)
[N, M] = size(matrix);
if N > 0
    for k = 1:N
        for n=1:tabnumber
            fprintf(file,'\t');
        end
        if k==1 && N>1
            fprintf(file,'{');
        end
        fprintf(file,'{');
        for j=1:M
            fprintf(file,' %f,',matrix(k,j));
        end
        if k==N
            if N>1
                fprintf(file,'},},');
            else
                fprintf(file,'},');
            end
        else
            fprintf(file,'},\n');
        end
    end
else
    for n=1:tabnumber
        fprintf(file,'\t');
    end
    fprintf(file,'{},');
end
end