clc,clear,close all
x=-pi:pi/10:pi;
y=[sin(x);sin(x+3);sin(x+5)];
z=[cos(x);cos(x+3);cos(x+5)];
figure(1);
plot(x,y,'r:*',x,z,'g-.v');