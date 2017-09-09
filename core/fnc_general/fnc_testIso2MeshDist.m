function testRes = fnc_testIso2MeshDist (model)
% Bone Mesh Female Toolkit 
% Licensed under the zlib license. See LICENSE for more details.
testRes = 1;
try
% Test by resampling the Talus mesh
[vertices_global,faces] =...
        fnc_remesh(model(13).vertices_global,...
        model(13).faces, 0.5);
    testRes = 0;
catch
    testRes = 1;
end
end