function call_pushExportLua (buttonHandle, ~, ~)
% Bone Mesh Female Toolkit
% Licensed under the zlib license. See LICENSE for more details.

boneNames = findobj('Tag','popup_menuBones');
boneNr = boneNames.Value;

% Put Value on the Action Window
action = findobj('Tag','listbox_actionHistory');
name_action = ['Exporting Lua model'];
action.String{length(action.String)+1} = name_action;
drawnow;

model_current = buttonHandle.Parent.UserData.model_current;
luaStruct = fnc_getLuaStruct (model_current, boneNr);

[LUAFileName,path] = uiputfile([buttonHandle.Parent.UserData.currPath,...
    '/export/exported_model.lua'],'Export Lua file');
if LUAFileName == 0
    return;
end
fnc_writeLUAFile (luaStruct, [path,LUAFileName], ...
    buttonHandle.Parent.UserData.pathToMeshes);
name_action = [' - Saved Lua model'];
action.String{length(action.String)+1} = name_action;
drawnow;

if ~isdir([buttonHandle.Parent.UserData.currPath,'/export/meshes/obj/'])
    mkdir([buttonHandle.Parent.UserData.currPath,'/export/meshes/obj/']);
end
ObjSavePath = [buttonHandle.Parent.UserData.currPath,...
    '/export/meshes/obj/'];
fnc_exportObj (luaStruct, ObjSavePath);
name_action = [' - Exported Obj meshes'];
action.String{length(action.String)+1} = name_action;
