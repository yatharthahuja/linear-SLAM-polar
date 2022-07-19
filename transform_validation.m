%  For validating transfromations:
%1. Define two coordinate frames 1 and 2. (user can change this arbitrarily).
%2. Choose one 3D point randomly (user can change this arbitrarily) in coordinate frame 1, call its Euclidean xyz coordinate as P1.
%3. Change P1 into polar coordinate in coordinate frame 1, call it P1’.
%4. Perform coordinate transformation and transform P1 into a Euclidean xyz coordinate in coordinate 2 – using the method in the book. Call it P2.
%5. Change P2 into polar coordinate in coordinate frame 2, call it P2’.
%6. Perform a coordinate transformation using your method and change P1’ into polar coordinate in coordinate frame 2 – call the result Q2.
%7. Check whether Q2=P2’
function transform_validation(R2, r2, P1)

T1 = [ 1 0 0 0 ; 0 1 0 0 ; 0 0 1 0 ; 0 0 0 1 ]; #frame1 # = eye(4) matrix
T2 = [ R2 -r2 ; 0 0 0 1 ]; # frame2

polarP1 = cart2sph(P1)

P2 = homogeneous_transform(T2, P1)
polarP2 = cart2sph(P2)

Q2 = (cart2sph(homogeneous_transform(T2, sph2cart(polarP1))))

#cart2sph(homogeneous_transform(T2', sph2cart(polarP1)))

end