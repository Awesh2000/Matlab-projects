clc;
clear all ;
close all
x1 = [1,2,3,4,5];
n1 = [-2,-1,0,1,2];
x2 = [5,6,7,8];
n2 = [0,1,2,3];
n = min(min(n1),min(n2)):max(max(n1),max(n2));
n3 = n;
n4 = n;
x3 = zeros(1,length(n));
x4 = x3;
x3(find((n>= min(n1)) & (n<=max(n1)))) = x1;
x4(find((n>= min(n2)) & (n<=max(n2)))) = x2;
y = x3 + x4;
n = n4;
figure
subplot(3,1,1);
plot2d3(n1,x1);
title('Awesh')
title('First Input sequence')
subplot(3,1,2)
plot2d3(n2,x2)
title('Second Input sequence')
subplot(3,1,3)
plot2d3(n,y)
title('Addition of two sequences')