function call_pushScale (buttonHandle, ~, ~)
% Bone Mesh Female Toolkit
% Licensed under the zlib license. See LICENSE for more details.

model_original = buttonHandle.Parent.UserData.model_orig;
model_scaled = buttonHandle.Parent.UserData.model_resampled;

boneNr = findobj('Tag','popup_menuBones');
buttonHandle.Parent.UserData.input_scaleHeight...
    = findobj('Tag','input_scaleHeight');
[inputHeight,OK] = ...
    str2num(buttonHandle.Parent.UserData.input_scaleHeight.String);

% Enable Undo and Restore Original Data (For Undo)
buttonHandle.Parent.UserData.model_undo = ...
    buttonHandle.Parent.UserData.model_current;
pushbutton_Undo = findobj('Tag','pushbutton_Undo');
pushbutton_Undo.Enable ='on' ;
pushbutton_Reset = findobj('Tag','pushbutton_Reset');
pushbutton_Reset.Enable ='on';
buttonHandle.Parent.UserData.inputHeight(2) = ...
    buttonHandle.Parent.UserData.inputHeight(1); 

% Put Value on the Action Window
action = findobj('Tag','listbox_actionHistory');
selectedBone = boneNr.String(boneNr.Value);
if isempty(inputHeight) || OK==0
    name_action = ...
        ' - Error in input subject height. Enter a number in meters.';
    action.String{length(action.String)+1} = name_action;
    close(h)
    return
end
name_action = ['Scaling ' selectedBone{:} ' with subject height: '...
    num2str(inputHeight)];
action.String{length(action.String)+1} = name_action;

% Compute Scaling Factors
VHP_Navel = 0.115;
VHP_lengths = [...
    VHP_Navel-model_original(4).joint_axes_global(3,4)
    model_original(4).joint_axes_global(3,4)-...
    model_original(6).joint_axes_global(3,4)
    model_original(8).joint_axes_global(3,4)-...
    model_original(12).joint_axes_global(3,4)
    max(model_original(46).vertices_global(:,1))-...
    min(model_original(14).vertices_global(:,1))
    ];
deLeva_lengthRatios = [
    0.1815  % Pelvis
    0.3685  % Thigh
    0.4323  % Shank
    0.2283  % Foot
    ]./1.735;
deLeva_lengths = deLeva_lengthRatios*inputHeight;
segmentTypeRelScaling = deLeva_lengths./VHP_lengths;
segmentRelScaling = [
    segmentTypeRelScaling(1) ... % Sacrum + Pelvis
    segmentTypeRelScaling(2) segmentTypeRelScaling(2)... % Femur
    segmentTypeRelScaling(2) segmentTypeRelScaling(2)... % Patella
    segmentTypeRelScaling(3) segmentTypeRelScaling(3)... % Tibia
    segmentTypeRelScaling(4) segmentTypeRelScaling(4)]; % Feet
model_scaled = fnc_updateJointAxes (model_scaled, segmentRelScaling);
action.String{length(action.String)+1} = ' - Updating marker positions';
model_scaled = fnc_updateMarkers (model_scaled);
action.String{length(action.String)+1} = ' - Finished rescaling';

buttonHandle.Parent.UserData.model_current = model_scaled; 
buttonHandle.Parent.UserData.inputHeight(1) = inputHeight;

% Update plots
call_updatePlots (buttonHandle);