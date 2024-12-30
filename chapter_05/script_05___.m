A = magic(20);
A(9:20,:) = []; % 删除9~20行所有元素

figure(1);
plot(A);