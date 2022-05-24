%% Exercise 03: Animation of a rotation
clear all;close all;clc;
%% Task a) Define rotation matrix
R=rotz(90)*rotx(90);
% Task b) Calculate axang containing axis and angle
axang=rotm2axang(R);
phi=rad2deg(axang(4));
%% Plot Properties
figure('Name','Exercise 3','NumberTitle','off', 'Color', 'white')
set(groot, 'defaultAxesTickLabelInterpreter','latex'); set(groot, 'defaultLegendInterpreter','latex');
axis equal; view(120,20); grid on;
xlim([-0.3,1]); ylim([-0.3,1]); zlim([-0.3,1]);
xlabel('$x$','Interpreter','latex'); ylabel('$y$','Interpreter','latex'); zlabel('$z$','Interpreter','latex');

% Cuboid parameters
sidelengths = [.6;.3;.9]; % Cuboid side lengths
center = sidelengths./2;   % Cuboid center

% Draw initial and final cuboid
DrawCuboid(sidelengths,center,eye(3),'r');  % initial: red
DrawCuboid(sidelengths,center,R,'g');       % final: green
% Draw unit vector of the rotation axis
mArrow3([0,0,0],1.4*axang(1:3),'color', 'k');

%% Draw the Animations
figure('Name','Exercise 3 Animation','NumberTitle','off', 'Color', 'white')
set(groot, 'defaultAxesTickLabelInterpreter','latex'); set(groot, 'defaultLegendInterpreter','latex');
axis equal; view(120,20); grid on;
xlim([-0.3,1]); ylim([-0.3,1]); zlim([-0.3,1]);
xlabel('$x$','Interpreter','latex'); ylabel('$y$','Interpreter','latex'); zlabel('$z$','Interpreter','latex');
phi_list=0:5:phi;
r2=DrawCuboid(sidelengths,center,eye(3),'r');  % initial: red
DrawCuboid(sidelengths,center,R,'g');       % final: green
mArrow3([0,0,0],1.4*axang(1:3),'color', 'k');
hold on
for i =1:length(phi_list)
    % Task c) Animate the current cuboid
    axang_step=[axang(1:3),deg2rad(phi_list(i))];
    R_step=axang2rotm(axang_step);
    c=DrawCuboid(sidelengths,center,R_step,'y');       % step cuboid: yellow
    pause(0.1)
    if i<length(phi_list)
        delete(c) 
    end
end
