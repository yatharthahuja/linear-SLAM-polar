function [az_,elev_,r_] = polar_shift(az,elev,r,a,b,c,psi,theta,phi)

%   Inputs polar coordinates, transalation shift in origin(cartesian) and rotation shift in origin
%   Outputs: new polar coordinates
%   works by converting into intermediate cartesian coordinates

printf("First Translation then Rotation:\n")
[x, y, z] = sph2cart(az,elev,r);
[x, y, z] = trans_shift_cart(x,y,z,a,b,c);
[x, y, z] = rot_shift_cart(x,y,z,psi,theta,phi);
[az_,elev_,r_] = cart2sph(x,y,z)

printf("First Rotation then Translation:\n")
[x, y, z] = sph2cart(az,elev,r);
[x, y, z] = rot_shift_cart(x,y,z,psi,theta,phi);
[x, y, z] = trans_shift_cart(x,y,z,a,b,c);
[az_,elev_,r_] = cart2sph(x,y,z)

end
