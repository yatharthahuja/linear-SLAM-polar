function [pol] = cart2sph(r)

%   3D Cartesian to Spherical Coordinates
%
%   [az,elev,rad] = mycart2sph(r)
%
%   Inputs:
%       r(1)       x-coordinate
%       r(2)       y-coordinate
%       r(3)    z-coordinate
%
%   Outputs:
%       az = pol(1)      Azimuth angle in radians, measured counterclockwise
%               from the positive x axis (otherwise referred to as phi)
%       elev = pol(2)    Elevation angle in radians, from xy plane (otherwise 
%               referred to as theta) 
%       rad = pol(3)       Radius
#hypotxy = hypot(r(1),r(2));
#rad = hypot(hypotxy,r(3));
rad = sqrt(sum(r.^2));
elev = acos(r(3)./rad);#longitude
az = atan2(r(2),r(1));#latitude
pol = [az; elev; rad];
end