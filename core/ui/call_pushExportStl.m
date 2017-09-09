function call_pushExportStl (buttonHandle, ~, ~)
% Bone Mesh Female Toolkit
% Licensed under the zlib license. See LICENSE for more details.

model_current = buttonHandle.Parent.UserData.model_current;
h = waitbar(0,'Exporting Stl meshes');

% Read Controls
menuBones = findobj('Tag','popup_menuBones');
boneNr = menuBones.Value;
StlSavePath = [buttonHandle.Parent.UserData.currPath,...
    '/export/meshes/stl/'];
if ~isdir(StlSavePath)
    mkdir(StlSavePath);
end

% Put Value on the Action Window
action = findobj('Tag','listbox_actionHistory');
boneName = menuBones.String(boneNr);
name_action = ['Exporting ' boneName{:} ' .stl'];
action.String{length(action.String)+1} = name_action;
drawnow;

if boneNr == 1
    meshID_start = 1;
    meshID_end   = length(model_current);
elseif boneNr == 2
    meshID_start = 12;
    meshID_end   = length(model_current);
else
    meshID_start = boneNr - 2;
    meshID_end   = boneNr - 2;
end

for boneID=meshID_start:meshID_end
    waitbar(boneID/meshID_end,h,'Exporting Stl meshes');
    fileName = [buttonHandle.Parent.UserData.currPath,...
        '/export/meshes/stl/',model_current(boneID).BoneName '.stl'];
    savestl(model_current(boneID).vertices_centered,...
        model_current(boneID).faces, fileName)
end
close(h);
end