function [x,y,z] = sph2cart(az,elev,r)

%   Spherical Coordinates to 3D Cartesian
%
%
%   Outputs:
%       x       x-coordinate
%       y       y-coordinate
%       z       z-coordinate
%
%   Inputs:
%       az      Azimuth angle in radians, measured counterclockwise
%               from the positive x axis (otherwise referred to as phi)
%       elev    Elevation angle in radians, from xy plane (otherwise 
%               referred to as theta) 
%       r       Radius

x = r * cos(az) * sin(elev);
y = r * sin(az) * sin(elev);
z = r * cos(elev);

end