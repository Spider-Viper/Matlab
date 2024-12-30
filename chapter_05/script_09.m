% 画包络线
clc,clear,close all
t = (0:pi/100:pi)';
y1 = sin(t)*[1,-1];
y2 = sin(t).*sin(9*t);
t2 = pi*(0:9)/9;
y3 = sin(t2).*sin(9*t2);

figure(1);
plot(t,y1,'r:',t,y2,'k',t2,y3,'bo');
axis([0,pi,-1,1]);