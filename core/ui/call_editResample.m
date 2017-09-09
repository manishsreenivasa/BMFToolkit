function call_editResample (buttonHandle, ~, ~)
% Bone Mesh Female Toolkit
% Licensed under the zlib license. See LICENSE for more details.

slider_resample = findobj('Tag','slider_resample');
edit_resample = findobj('Tag','edit_resample');
if str2num (edit_resample.String) < 0.1
    slider_resample.Value = 0.1;
    edit_resample.String = '0.1';
elseif str2num (edit_resample.String) > 1.0
    slider_resample.Value = 1.0;
    edit_resample.String = '1.0';
else
    slider_resample.Value = str2num (edit_resample.String);
end
end