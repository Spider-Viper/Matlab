% 绘制网格图
clc,clear,close all
x = -10:0.1:10;
y = -10:0.1:10;
[x,y] = meshgrid(x,y); % 生成格点
z = - x.^2 - y.^2 + 200;
mesh(x,y,z);