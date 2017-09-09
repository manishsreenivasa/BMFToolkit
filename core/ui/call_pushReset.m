function call_pushReset(buttonHandle, ~, ~)
% Bone Mesh Female Toolkit
% Licensed under the zlib license. See LICENSE for more details.

% Define Variables 
buttonHandle.Parent.UserData.model_current =...
    buttonHandle.Parent.UserData.model_orig;    
buttonHandle.Parent.UserData.model_undo = [];

action = findobj('Tag','listbox_actionHistory');
action.String{length(action.String)+1} = '** Resetting data **';
action.Value = length(action.String);

% Restore Original Data
pushbutton_Reset = findobj('Tag','pushbutton_Reset');
pushbutton_Reset.Enable ='off';
pushbutton_Undo = findobj('Tag','pushbutton_Undo');
pushbutton_Undo.Enable = 'off';
buttonHandle.Parent.UserData.inputHeight(1)= 0; 

% Update plots
call_updatePlots (buttonHandle);
end