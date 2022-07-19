function [cart] = sph2cart(X)#[az(lat),elev(long),rad]'

%   Spherical Coordinates to 3D Cartesian
%   Outputs:
%       x       x-coordinate
%       y       y-coordinate
%       z       z-coordinate
%   Inputs:
%       az      Azimuth angle in radians, measured counterclockwise
%               from the positive x axis (otherwise referred to as phi)
%       elev    Elevation angle in radians, from xy plane (otherwise 
%               referred to as theta) 
%       r       Radius
#x = r * sin(lat) * cos(long)
#y = r * sin(lat) * sin(long)
#z = r * cos(lat)
x = X(3) * sin(X(2)) * cos(X(1));
y = X(3) * sin(X(2)) * sin(X(1));
z = X(3) * cos(X(2));
cart = [x;y;z];
end