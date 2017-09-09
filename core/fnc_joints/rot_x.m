function rot_mat = rot_x(ang)
    rot_mat = [1 0 0; 0 cos(ang) -sin(ang); 0 sin(ang) cos(ang)];
end