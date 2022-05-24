%this function aims to find Euler angeles given a Rotation matrix
%%% R=[ r11   r12   r13;
%       r21   r22   r23;
%       r31   r32   r33]; 
function [phi, theta, psi] = anglesEULER(R)
    %Finding angle theta as it's the easiest one
    stheta=sqrt((R(3,2)^2)+(R(3,1)^2));
    ctheta=R(3,3);
    theta=atan2d(stheta,ctheta);
    %Finfning angle Phi
    %you have to firstly to check for Gimble lock
    stheta=sind(theta);
    if stheta==0
        error('Gimble lock')
    else
       phi=atan2d(R(3,1),R(3,2)); 
    end
    %finaly finding Psi
    psi=atan2d(R(1,3),-R(2,3));
    
end