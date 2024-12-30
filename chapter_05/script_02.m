%%
clc,clear,close all
x1 = (0:12)*pi/6;
y1 = cos(3*x1);
x2 = (0:360)*pi/180;
y2 = cos(3*x2);
figure(1)

subplot(2,2,1);
plot(x1,y1,'o','MarkerSize',3);
xlim([0 2*pi]);

subplot(2,2,2);
plot(x1,y1,'LineWidth',2);
xlim([0 2*pi]);

subplot(2,2,3);
plot(x2,y2,'o','MarkerSize',3);
xlim([0 2*pi]);

subplot(2,2,4);
plot(x2,y2,'LineWidth',2);
xlim([0 2*pi]);