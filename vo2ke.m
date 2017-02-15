function [ Ckel ] = vo2ke( C )
%This Code converts Voigt notation 6X6 matrix to Kelvin notation 6X6 matrix.
Ckel(1:3,4:6) = sqrt(2)*C(1:3,4:6);
Ckel(4:6,1:3) = sqrt(2)*C(4:6,1:3);
Ckel(4:6,4:6) = 2*C(4:6,4:6);
Ckel(1:3,1:3) = C(1:3,1:3);
end

