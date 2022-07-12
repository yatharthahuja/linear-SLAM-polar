function [alpha_,beta_,gamma_] = orientation_shift(alpha,beta,gamma,psi,theta,phi)

%   Shits Euler angles (Alpha, Beta, Gamma) wrt to reference frame rotations
%
%
%   Outputs:
%              new alpha
%              new beta
%              new gamma

alpha_ = alpha - psi;
beta_ = beta - theta;
gamma_ = gamma - phi;

end 