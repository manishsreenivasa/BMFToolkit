function call_pushUndo (buttonHandle, ~, ~)
% Bone Mesh Female Toolkit
% Licensed under the zlib license. See LICENSE for more details.

% Define Variables 
buttonHandle.Parent.UserData.model_current =...
    buttonHandle.Parent.UserData.model_undo;
buttonHandle.Parent.UserData.model_undo = [];
buttonHandle.Parent.UserData.inputHeight(1) =...
    buttonHandle.Parent.UserData.inputHeight(2); 

action = findobj('Tag','listbox_actionHistory');
action.String{length(action.String)+1} = '* Undoing last action *';
action.Value = length(action.String);

pushbutton_Undo = findobj('Tag','pushbutton_Undo');
pushbutton_Undo.Enable = 'off';

% Update plots
call_updatePlots (buttonHandle);
end