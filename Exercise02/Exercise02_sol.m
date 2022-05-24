%% Task: Calculate with EULER angles
% a) Write a function that returns the rotation matrix for given EULER angles phi, theta,
% psi
% b) Write a function that returns the EULER angles for a given rotation
% matrix
% c) Call the nested function and watch the result


%% Solution
% MATLAB built-in functions: rotm2eul/ eul2rotm (other functions)

% task c)
[A,B,C] = anglesEULER(rotationmatrixEULER(10,20,30));

% task a) 
function R = rotationmatrixEULER(phi, theta, psi)
%     solution 1) MATLAB built-in functions: rotx, rotz
%     R = rotz(psi) * rotx(theta) * rotz(phi);

    % solution 2) type in the matrices
    R1 = [cosd(phi),     -sind(phi),       0;...
          sind(phi),      cosd(phi),       0;...
                  0,              0,       1]; % rotz(phi)

    R2 = [        1,             0,                 0;...
                  0,   cosd(theta),      -sind(theta);...
                  0,   sind(theta),       cosd(theta)]; % rotx(theta)

    R3 = [cosd(psi),     -sind(psi),       0;...
          sind(psi),      cosd(psi),       0;...
                  0,              0,       1]; % rotz(psi)

    R = R3 * R2 * R1;
end

% task b) 
% MATLAB built-in solution
function [phi, theta, psi] = anglesEULER(R)
    % Theta
    stheta = sqrt(R(3,1)^2+R(3,2)^2);
    ctheta = R(3,3);
    theta = atan2(stheta,ctheta)*180/pi; % sign is unclear
    % Phi
    stheta = sin(theta);
    if stheta == 0
        error('gimbal lock')
    else 
        sphi = R(3,1)/stheta;
        cphi = R(3,2)/stheta;
    end
    phi = atan2(sphi,cphi)*180/pi;
    % Psi
    spsi = R(1,3)/stheta;
    cpsi = -R(2,3)/stheta;
    psi = atan2(spsi,cpsi)*180/pi;
end