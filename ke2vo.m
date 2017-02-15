function [ Cvo ] = ke2vo( Ckel )
%ke2vo transforms Kelvin notation 6X6 matrix to Voight notation 6X6 matrix
Cvo(1:3,4:6) = 1/sqrt(2)*Ckel(1:3,4:6);
Cvo(4:6,1:3) = 1/sqrt(2)*Ckel(4:6,1:3);
Cvo(4:6,4:6) = 1/2*Ckel(4:6,4:6);
Cvo(1:3,1:3) = Ckel(1:3,1:3);
end

