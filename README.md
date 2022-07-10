# Formulation of LinearSLAM in Polar Co-ordinates

# Included Files:

1. cart2sph.m: *For converting cartesian coordinates into polar form.* <\br>
          *INPUTS: cartesian coordinates(x, y, z).* 
          *OUTPUT: polar coordinates(az, elev, r)*
2. sph2cartc: *For converting polar coordinates into cartesian form. INPUTS: polar coordinates(az, elev, r). OUTPUT: cartesian coordinates(x, y, z)*
3. rot_shift_cart.m: *For implementing rotation shift of coordinates with respect to rotation in reference axes, in cartesian format. INPUTS: rotation angles in XYZ format(psi,theta,phi) and initial cartesian coordinates (x,y,z). OUTPUT: New cartesian coordiantes(x,y,z).*
4. trans_shift_cart.m: *For implementing translation displacement of coordinates with respect to translation in reference axes, in cartesian format. . INPUTS: trnaslation shift in XYZ fromat(a,b,c) and initial cartesian coordinates (x,y,z). OUTPUT: New cartesian coordiantes(x,y,z).*
5. polar_shift.m: *Master file for implementing total shift in polar coordinates. Works by converting polar input to cartesian intermediate form. Takes inputs:* 
*1. Polar coodinates (az, elev, r)*
*2. Translation displacement (a, b, c)*
*3. Rotation displacement (psi, theta, phi)*
*It outputs new polar coordinates in the form (az, elev, r)*
