function [ Cvo ] = rotator( C,rotang )
%rotator rotates the 6X6 matrix for given rotation angles
if  length(rotang) > 2
    Ckel=vo2ke(C);
    Z1=[cosd(rotang(1)) sind(rotang(1)) 0;-sind(rotang(1)) cosd(rotang(1)) 0;0 0 1];
    Z2=[1 0 0 ;0 cosd(rotang(2)) sind(rotang(2));0 -sind(rotang(2)) cosd(rotang(2))];
    Z3=[cosd(rotang(3)) sind(rotang(3)) 0;-sind(rotang(3)) cosd(rotang(3)) 0;0 0 1];
    A=Z3*Z2*Z1;
    Abar=A2Abar(A);
    Crot=Abar'*Ckel*Abar;
    Cvo=ke2vo(Crot);
else
    Ckel=vo2ke(C);
    Z1=[cosd(rotang(1)) sind(rotang(1)) 0;-sind(rotang(1)) cosd(rotang(1)) 0;0 0 1];
    Z2=[1 0 0 ;0 cosd(rotang(2)) sind(rotang(2));0 -sind(rotang(2)) cosd(rotang(2))];
    A=Z2*Z1;
    Abar=A2Abar(A);
    Crot=Abar'*Ckel*Abar;
    Cvo=ke2vo(Crot);
end