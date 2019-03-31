%experiment 2.1
%conv（）卷积
clc;
clear all;
close all;

t1 = -3:0.1:3;
t2 = -3:0.1:3;
u0 = stepfun(t1,0);
u1 = stepfun(t2,1);
f1 = u0 - u1;
f2 = 2.*t2.*(u0 - u1);
y = conv(f1,f2);

%sconv(f1,f2,t1,t2,0.1);

t0=t1(1)+t2(1);
t3=length(f1)+length(f2)-2;
p = 0.1;
t=t0:p:t0+t3*p;
plot(t,y);
title("2.2.1");
axis([-5,5,-1,10]);

%也可以使用这个函数求不过这里不用，先挂在这
function [f,k]=sconv(f1,f2,k1,k2,p)

%计算连续信号卷积积分f(t)=f1(t)*f2(t)

%f:卷积积分f(t)对应的非零样值向量

%k:f(t)的对应时间向量

%f1：f1（t）非零样值向量

%f2：f2（t)的非零样值向量

%k1：f1（t）的对应时间向量

%k2:f2(t)的对应时间向量

%p：取样时间间隔

f=conv(f1,f2);

f=f*p;
k0=k1(1)+k2(1);
k3=length(f1)+length(f2)-2;

k=k0:p:k0+k3*p;
plot(k1,f1);
title('f1(t)');
end