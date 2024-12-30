clc,clear,close all
j = sqrt(-1);
x = 2;
y = 0.4;

bluecircle = cos(-pi:pi/20:pi) + j*sin(-pi:pi/20:pi) + (j*y - x);
blackcircle = cos(-pi:pi/20:pi) + j*sin(-pi:pi/20:pi) + (j*y);
redcircle = cos(-pi:pi/20:pi) + j*sin(-pi:pi/20:pi) + (j*y + x);
yellowcircle = cos(-pi:pi/20:pi) + j*sin(-pi:pi/20:pi) + (-j*y - x/2);
greencircle = cos(-pi:pi/20:pi) + j*sin(-pi:pi/20:pi) + (-j*y + x/2);

figure(1)
plot(bluecircle,'LineWidth',5);hold on;
plot(blackcircle,'LineWidth',5);hold on;
plot(redcircle,'LineWidth',5);hold on;
plot(yellowcircle,'LineWidth',5);hold on;
plot(greencircle,'LineWidth',5);hold on;