function [x_,y_,z_] = trans_shift_cart(x,y,z,a,b,c)

%   Spherical Coordinates to 3D Cartesian
%
%
%   Outputs:
%       x       new x-coordinate
%       y       new y-coordinate
%       z       new z-coordinate

x_ = x - a;
y_ = y - b;
z_ = z - a;

end 