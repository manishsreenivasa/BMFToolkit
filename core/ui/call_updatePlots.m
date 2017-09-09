function call_updatePlots (buttonHandle, ~, ~)
% Bone Mesh Female Toolkit
% Licensed under the zlib license. See LICENSE for more details.

boneNr = findobj('Tag','popup_menuBones');
buttonHandle.Parent.UserData.bPlot_jointAxes...
    = findobj('Tag','checkBox_jointAxes');
buttonHandle.Parent.UserData.bPlot_landmarks...
    = findobj('Tag','checkBox_landmarks');
buttonHandle.Parent.UserData.bPlot_markers...
    = findobj('Tag','checkBox_markers');

bPlot_jointAxes = buttonHandle.Parent.UserData.bPlot_jointAxes.Value;
bPlot_landmarks = buttonHandle.Parent.UserData.bPlot_landmarks.Value;
bPlot_markers   = buttonHandle.Parent.UserData.bPlot_markers.Value;

luaButton = findobj('Tag','pushbutton_exportLua');
if boneNr.Value == 1 || boneNr.Value == 2
    luaButton.Enable = 'on';
else
    luaButton.Enable = 'off';
end

% Plot Meshes
subplot('position',[0.04 0.02 0.4 0.55]);
title ('Original');
fnc_plotModel (buttonHandle.Parent.UserData.model_orig,...
    boneNr.Value, ...
    bPlot_jointAxes,...
    bPlot_landmarks,...
    bPlot_markers);

subplot('position',[0.5 0.02 0.4 0.55]);
title('Current');
fnc_plotModel (buttonHandle.Parent.UserData.model_current,...
    boneNr.Value, ...
    bPlot_jointAxes,...
    bPlot_landmarks,...
    bPlot_markers);
end