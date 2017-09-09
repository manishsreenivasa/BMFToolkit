function fnc_plot3LineFromTo(from, to, col, wd)
% Bone Mesh Female Toolkit 
% Licensed under the zlib license. See LICENSE for more details.

if nargin < 4
    wd=1;
end
if nargin < 3
    col='k';
end
[a,b]=size(from);
for i=1:a
    plot3(from(i,1), from(i,2), from(i,3),...
        'linestyle','none','marker','o','color',col);
    plot3(to(i,1), to(i,2), to(i,3), 'linestyle',...
        'none','marker','o','color',col);
    plot3([from(i,1) to(i,1)],[from(i,2) to(i,2)], [from(i,3) to(i,3)],...
        'linestyle', '-', 'color', col,'linewidth',wd);
end