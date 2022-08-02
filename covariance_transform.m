# Perform Cartesian Covariance Matrix Transform using input R rotation matrix and on input matrix
# where R is defined with resepect to current reference frame of Covariance matrix (E)
function newE = homogeneous_transform(R, E)
  newE = R*E*R';
end