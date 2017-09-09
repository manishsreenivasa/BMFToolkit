function fnc_plotModel (model, boneNr, bPlot_jointAxes, bPlot_landmarks, bPlot_markers, viewAngle)
% Bone Mesh Female Toolkit 
% Licensed under the zlib license. See LICENSE for more details.

if nargin < 6
    viewAngle = [40 20];
end

if boneNr == 1
    meshID_start = 1;
    meshID_end   = length(model);
    if bPlot_jointAxes
        fnc_plotJointAxis (model(1).ROOT_axes, 'r', 10, 0.1);
    end
elseif boneNr == 2
    meshID_start = 12;
    meshID_end   = length(model);
else
    meshID_start = boneNr - 2;
    meshID_end   = boneNr - 2;
end

cla;
if ~is_octave()
  cameratoolbar('Show'); 
end
hold on;
ROOT_axes = eye(4);

for meshID = meshID_start:meshID_end
    patch('Faces', model(meshID).faces, 'Vertices', ...
        model(meshID).vertices_global, 'FaceColor', 'none', 'Edgecolor',...
        model(meshID).mesh_color);
    if bPlot_jointAxes
        fnc_plotJointAxis (model(meshID).joint_axes_global, 'k', 5, 0.05);
    end
    if bPlot_markers
        [numMarkers,~] = size(model(meshID).marker_values);
        for markerNo = 1:numMarkers
            global_marker_position = model(meshID).joint_axes_global*...
                [model(meshID).marker_values(markerNo,:) 1]';
            plot3 (global_marker_position(1), global_marker_position(2),...
                global_marker_position(3), 'ob', 'markersize', 15,...
                'markerfacecolor', 'b');
            text (global_marker_position(1), global_marker_position(2),...
                global_marker_position(3),...
                model(meshID).marker_names(markerNo));
        end
    end
    if bPlot_landmarks
        for idx=1:length(model(meshID).LandmarkNames)
            l_idx = model(meshID).LandmarkIndices(idx);
            plot3(model(meshID).vertices_global(l_idx,1),...
                model(meshID).vertices_global(l_idx,2),...
                model(meshID).vertices_global(l_idx,3),...
                'og','markerfacecolor','g','markersize',10);
            text(model(meshID).vertices_global(l_idx,1),...
                model(meshID).vertices_global(l_idx,2),...
                model(meshID).vertices_global(l_idx,3),...
                model(meshID).LandmarkNames(idx));
        end
    end
end
light('Position',[-1.0,-1.0,100.0],'Style','infinite');
if ~is_octave()
  lighting phong;
end
view(viewAngle);
axis square
axis equal
grid on;
xlabel('X'); ylabel('Y'); zlabel('Z');