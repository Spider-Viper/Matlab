clc,clear,close all

x = -10:10;
y = x.^2;
z = cos(-pi:pi/100:pi) + sqrt(-1)*sin(-pi:pi/100:pi); % 复数

figure(1)

subplot(1,3,1);
plot(x,y,'LineWidth',2);

subplot(1,3,2);
plot(x,y,'LineWidth',2);
xlim([1 length(y)]);

subplot(1,3,3);
plot(z,'LineWidth',2);
