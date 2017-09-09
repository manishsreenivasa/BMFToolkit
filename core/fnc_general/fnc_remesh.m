function [ opt_Vertex,opt_Faces ] = fnc_remesh(Vertex,Faces,p)
% Bone Mesh Female Toolkit 
% Licensed under the zlib license. See LICENSE for more details.

opt_Vertex = Vertex;
opt_Faces = Faces;

% RESAMPLE
[opt_Vertex, opt_Faces] = meshresample (opt_Vertex, opt_Faces, p);

% SMOOTH
[conn, connnum, count] = meshconn (opt_Faces, length(opt_Vertex));
alpha = 1.0; beta = 0.5; iter = 10; mask = [];
p = smoothsurf(opt_Vertex, mask, conn, iter, alpha, 'lowpass', beta);
[opt_Vertex, opt_Faces] = meshcheckrepair(p, opt_Faces,'meshfix'); 
end