function rot_mat = rot_z(ang)
    rot_mat = [cos(ang) -sin(ang) 0; sin(ang) cos(ang) 0; 0 0 1];
end