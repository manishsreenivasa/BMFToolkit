function call_pushExportObj (buttonHandle, ~, ~)
% Bone Mesh Female Toolkit
% Licensed under the zlib license. See LICENSE for more details.

boneNr = findobj('Tag','popup_menuBones');
% Put Value on the Action Window
action = findobj('Tag','listbox_actionHistory');
selectedBone = boneNr.String(boneNr.Value);
name_action = ['Exporting ', selectedBone{:},' meshes'];
action.String{length(action.String)+1} = name_action;
drawnow;

ObjSavePath = [buttonHandle.Parent.UserData.currPath,...
    '/export/meshes/obj/'];
luaStruct = fnc_getLuaStruct(buttonHandle.Parent.UserData.model_current,...
    boneNr.Value);
fnc_exportObj (luaStruct, ObjSavePath);
end