function [x_ y_ z_] = rot_shift_cart(x,y,z,psi,theta,phi)
  %psi,theta,phi = euler angles in XYZ (measured from respective axes, in radians)  

  c = cos([psi theta phi]);
  s = sin([psi theta phi]);
  
  rotM = [c(2)*c(3) c(2)*s(3) -1*s(2);
          (-1*c(1)*s(3))+(s(1)*s(2)*c(3)) (c(1)*c(3))+(s(1)*s(2)*s(3)) s(1)*s(2);
          (s(1)*s(2))+(c(1)*s(2)*c(3)) (-1*s(1)*c(2))+(c(1)*s(2)*s(3)) c(1)*c(2)];
  
  %[x_ y_ z_] = [1 2 3]
  X_ = rotM*[x y z]';
  x_ = X_(1);
  y_ = X_(2);
  z_ = X_(3);
  
  
end
