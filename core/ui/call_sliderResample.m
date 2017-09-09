function call_sliderResample (buttonHandle, ~, ~)
% Bone Mesh Female Toolkit
% Licensed under the zlib license. See LICENSE for more details.
slider_resample = findobj('Tag','slider_resample');
edit_resample = findobj('Tag','edit_resample');
edit_resample.String = num2str (slider_resample.Value,2);
end