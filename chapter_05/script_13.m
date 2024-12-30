% 曲面图绘制
clc,clear,close all
[x,y,z] = peaks(25);
figure(1);
% surf(x,y,z);
mesh(x,y,z);