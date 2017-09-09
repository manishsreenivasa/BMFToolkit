function rot_mat = rot_y(ang)
    rot_mat = [cos(ang) 0 -sin(ang);0 1 0; sin(ang) 0 cos(ang)];
end