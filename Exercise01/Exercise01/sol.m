%% Exercise 01 
% Task: Calculations with a rotation matrix
% Consider Exercise 1 in the exercise sheet
% a) set l = 3, h = 2, w = 1
% b) create a matrix called rot0R1 describing the transformation from frame 0 to frame 1
% c) create the three dimensional vectors vec0a and vec0b with respect to
% frame 0 using l, h and w
% d) calculate the transformed vectors vec1a and vec1b using the transformation matrix from task b)
% e) run the program and see the result
clear all; clc; close all;
%% Variables
l=5;h=3;w=2;
rot0R1=[0 -1 0; -1 0 0;0 0 -1];
%% 
%% Vectors:
vec0a=[0,3,-2]';
vec0b=[5,3,-2]';
vec1a=(rot0R1).'*vec0a
vec1b=(rot0R1).'*vec0b
%% Visualize check (not part of the solution)
figure('Name','Exercise 1','NumberTitle','off', 'Color', 'white')
set(groot, 'defaultAxesTickLabelInterpreter','latex'); set(groot, 'defaultLegendInterpreter','latex');
% proof of length, width and height
plot_cuboid(l, h, w);
% proof of the vectors
plot_vectors(vec0a,vec0b);
plot_frame(eye(3),[0;0;0],'r');
% proof of rotation matrix:
plot_frame((rot0R1).',[l;h;0],'b'); 
view(35,20)
xlabel('$x_0$','Interpreter','latex','fontsize',15)
ylabel('$y_0$','Interpreter','latex','fontsize',15)
zlabel('$z_0$','Interpreter','latex','fontsize',15)
text(0,-0.5,0,'$K_1$','Interpreter','latex','fontsize',15)
text(l,w,0.5,'$K_2$','Interpreter','latex','fontsize',15)
axis equal

