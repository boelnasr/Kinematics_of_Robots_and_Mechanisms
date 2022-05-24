%% Exercise 01 
% Task: Calculations with a rotation matrix
% Consider Exercise 1 in the exercise sheet
% a) set l = 3, h = 2, w = 1
% b) create a matrix called rot0R1 describing the transformation from frame 0 to frame 1
% c) create the three dimensional vectors vec0a and vec0b with respect to
% frame 0 using l, h and w
% d) calculate the transformed vectors vec1a and vec1b using the transformation matrix from task b)
% e) run the program and see the result

%% Variables:
 l=3;
 h=2;
 w=1;
 K_0=[0,0,0];

%% Env setup:

%% Solution
rot0R1==[0,-1,0;-1,0,0;0,0,-1];
?vec0a=[0,3,-2];
vec0b=[5,3,-2];
%% Visualize check (not part of the solution)
figure('Name','Exercise 1','NumberTitle','off', 'Color', 'white')
set(groot, 'defaultAxesTickLabelInterpreter','latex'); set(groot, 'defaultLegendInterpreter','latex');
% proof of length, width and height
plot_cuboid(l, h, w)
% proof of the vectors
plot_vectors(vec0a,vec0b)

plot_frame(eye(3),[0;0;0],'r');
% proof of rotation matrix:
plot_frame(transpose(rot0R1),[l;h;0],'b'); 
view(35,20)
xlabel('$x_0$','Interpreter','latex')
ylabel('$y_0$','Interpreter','latex')
zlabel('$z_0$','Interpreter','latex')
axis equal


function plot_cuboid(l, h, w)
    hold on;
    %Lines X0
    plot3([0,l],[0,0],[0,0],'k--')
    plot3([0,l],[h,h],[0,0],'k--')
    plot3([0,l],[h,h],[-w,-w],'k--')
    plot3([0,l],[0,0],[-w,-w],'k--')
    %Lines Y0
    plot3([0,0],[0,h],[0,0],'k--')
    plot3([l,l],[0,h],[0,0],'k--')
    plot3([l,l],[0,h],[-w,-w],'k--')
    plot3([0,0],[0,h],[-w,-w],'k--')
    %Lines Z0
    plot3([0,0],[0,0],[0,-w],'k--')
    plot3([l,l],[0,0],[0,-w],'k--')
    plot3([0,0],[h,h],[0,-w],'k--')
    plot3([l,l],[h,h],[0,-w],'k--')
end

function plot_vectors(vec0a,vec0b)
    mArrow3([0,0,0],transpose(vec0a),'color','g');
    mArrow3([0;0;0],vec0b,'color','m');
end

function plot_frame(rotation_matrix, origin, color)
    R = rotation_matrix;
    mArrow3(origin,origin+R(:,1),'color',color)
    mArrow3(origin,origin+R(:,2),'color',color)
    mArrow3(origin,origin+R(:,3),'color',color) 
end