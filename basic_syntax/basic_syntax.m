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
%%
clc,clearvars,close all
x = linspace(0,10,10000);
y = sin(x)

% figure(1)
% plot(x,y,'.')
% hold on
% plot([0 10],[0.8 0.8],'-r')

% y >= 0.8
y_greater = y > 0.8
sum(y_greater)
length(y)
FinalPercent = sum(y_greater) / length(y)
%%
clc,clearvars,close all
A = ones(1,10)
A > 0 % 对每个元素进行比对，输出logical array
A = ones(1,10)*5
A < 0
A = ones(1,10)*100
sum(A)
result = A > 0
sum(result)
%%
clc,clearvars,close all
% parameters
max_x = 6.3;
x = linspace(0,max_x,1000);
y = sin(x);
y_check = 0.5;

% actions
plot(x,y,'.'), hold on, plot([0 max_x],[y_check y_check],'-r')
y_greater = y > y_check;

% output
FinalPercent = sum(y_greater) / length(y) * 100
%%
% Generate 10 random values from 1 to 5. Count the number of 3's.
% Display 'wow!' if more than 20% of the random numbers are 3.
% Do parts A and B with a For Loop
% Extend to 10 million random numbers - which method is faster?
clc,clearvars,close all

A = randi(5,1,10)
s = sum(A == 3)
if s >= 3
    disp('wow!')
end
%%
% For Loop
clc,clearvars,close all

for i = 1:10
    i
    i + 1
    disp('i')
end

clc,clear,close all
for i = 1:2:10
    i
    i + 1
    disp('i')
end
%%
clc,clear,close all
A = randi(5,1,10);
num3 = 0;
for i = 1:length(A)
    if A(i) == 3
        num3 = num3 + 1
    end
end
%%
tic
A = randi(5,1,10000000)
toc
%%
tic
A = randi(5,1,10000000)
time_consuming = toc
%%
% While Loops
clc,clearvars,close all
while condition
end
%%
clc,clear,close all
z = 100;
while z > 75    % 无限循环
    disp(sqrt(z))
end
%%
reduce_z(100)