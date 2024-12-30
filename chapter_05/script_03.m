% y = x + sin(x) + e^x
% 画出x 在 [-pi/2,pi/2] 上的图像
clc,clear,close all
x = -pi/2:0.001:pi/2;
y = x + sin(x) + exp(x);

figure(1);
% plot(x,y,'LineWidth',2);
plot(x,y,'or');

grid on;
xlim([-pi/2 pi/2]);
title('function');
xlabel('x');
ylabel('y');
legend('y = x + sin(x) + e^x');