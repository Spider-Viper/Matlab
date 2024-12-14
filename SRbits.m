% FSM
% 计算状态寄存器位数
%%
clear;
prompt = "请输入有限状态机状态个数：";
states = input(prompt);
n = ceil(log2(states));
fprintf("状态寄存器位数为：%d\n",n);