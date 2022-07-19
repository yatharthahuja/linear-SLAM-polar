# Perform Cartesian Homogeneous Transform using input T matrix and on input co-ordinates
# where T is defined with resepect to current reference frame of P
function newP = homogeneous_transform(T, P)
  newP = (T*[P;1])(1:3);
end