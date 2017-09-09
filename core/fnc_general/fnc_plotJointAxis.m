function fnc_plotJointAxis(jointAxis, col, markerSz, lengthAxis)
% Bone Mesh Female Toolkit 
% Licensed under the zlib license. See LICENSE for more details.

if nargin < 4
    lengthAxis=50;
end
if nargin < 3
    markerSz=5;
end
if nargin < 2
    col ='r';
end
col_str = ['o',col];
plot3(jointAxis(1,4),jointAxis(2,4),jointAxis(3,4), col_str, ...
    'markersize',markerSz*2,'markerfacecolor',col);

tmpPt = [lengthAxis 0 0 1];
tmpPt_in_axis = jointAxis*tmpPt';
plot3(tmpPt_in_axis(1), tmpPt_in_axis(2), tmpPt_in_axis(3), col_str,...
    'markersize',markerSz, 'markerfacecolor',col);
fnc_plot3LineFromTo(jointAxis(1:3,4)',tmpPt_in_axis', col, 3);

tmpPt = [0 lengthAxis 0 1];
tmpPt_in_axis = jointAxis*tmpPt';
plot3(tmpPt_in_axis(1), tmpPt_in_axis(2), tmpPt_in_axis(3),  col_str,...
    'markersize',markerSz, 'markerfacecolor',col);
fnc_plot3LineFromTo(jointAxis(1:3,4)', tmpPt_in_axis', col, 3);
        
tmpPt = [0 0 lengthAxis 1];
tmpPt_in_axis = jointAxis*tmpPt';
plot3(tmpPt_in_axis(1), tmpPt_in_axis(2), tmpPt_in_axis(3),  col_str,...
    'markersize',markerSz, 'markerfacecolor',col);
fnc_plot3LineFromTo(jointAxis(1:3,4)', tmpPt_in_axis', col, 3);     