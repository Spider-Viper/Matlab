clearvars
clc
%%
whos;
%%
w = 'new';
whos
%%
z = "york";
whos
%%
% Vectors and Matrices
clc, clearvars
x = 1:10;
x'; % transpose
x = linspace(20,50); % 产生100个数，包括20和50
x = linspace(0,100);
x = linspace(0,100,20); % 产生20个数，包括0和100
%%
y = [20 8 -1 -100];
y = [20,8,-1,-100];
A = [1 3; 2 -10;88 99];
%%
A + 2; % 每个元素都加2
A * 8;
A * A;
A = [1 3; 2 -10; 88 99];
A * A; % error
A * A';
%%
x = linspace(0,100);
x^2; % error
x = [1 2 3;4 5 6];
x^2; % error
x.^2; % 对每一个元素进行操作
x = linspace(0,100,101);
x.^2;
%%
A = ones(3,1);
B = zeros(10);
I = eye(3);
I = eye(4,6);
I = eye(8,4);
%%
y = 22:100; % 步长为1
x = 1:1:10;
x = 1:2:10;
%%
A = [5 3 4.2; 8 9 0];
A(end);
B = 1:5:980;
B(end);
B(end - 10);
A = [1 2 4; 4 5 6];
A(1,1) = 100;
A(2,:);
A(2,1:3);
A(2,1:1);
A(2,1:2);
A(2,3:3);
A(2,end);
%%
clc,clearvars,close all
x = linspace(0,5);
y = -(x-3)^2; % error
y = ((-(x-3).^2))+10;
plot(x,y,'*'); % 线型：*****
max(y);
min(y);
[max_value,I]=max(y); % I为索引
x_maxvalue = x(I); % y的最大值对应的x的值
%%
% anonymous function
y = @(x)((-(x-3).^2))+10; % y is a function handle
% y(x's value)
y(1292.1);
%%
help function_name
doc
doc function_name
%%
clc,clearvars,close all
x = linspace(-10,10);
% y1 = @(x)(-(x-3).^2)+10;
y1 = (-(x-3).^2)+10;
y2 = (-(x-3).^2)+15;
y3 = (-(x-5).^2)+10;
figure(1)
plot(x,y1)
hold on
plot(x,y3)
hold on
plot(x,y2)
%%
figure(1)
plot(x,y1)
xlabel('x')
ylabel('y')

figure(2)
plot(x,y2,'bo')
hold on
plot(x,y1,'ms')
hold on
plot(x,y3,'k*')
% plot(x,y1,'ms','MarkerFaceColor','m','MarkerSize',10)
xlabel('x')
ylabel('y')
title('Y vs X - Problem A')
grid on
legned('y2','y1','y3')
xlim([0 2])
ylim([0 50])
%%
% subplot
figure(1)
subplot(1,3,1)
plot(x,y1,'ms','MarkerFaceColor','m','MarkerSize',10)
xlabel('x')
ylabel('y')
title('Y vs X - Problem A')
grid on

subplot(1,3,2)
plot(x,y2,'bo')
xlabel('x')
ylabel('y')
title('Y vs X - Problem A')
grid on

subplot(1,3,3)
plot(x,y3,'k*')
xlabel('x')
ylabel('y')
title('Y vs X - Problem A')
grid on




















