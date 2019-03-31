%experiment 2.1.(2)
%conv�������
clc;
clear all;
close all;

t1 = -10:0.1:10;
t2 = -10:0.1:10;
u0 = stepfun(t1,0);
u1 = stepfun(t1,4);
u2 = stepfun(t2,5);
g5 = u0 - u2;
f1 = cos(30.*t1) .*g5; 
f2 = u0 - u1;
y = conv(f1,f2);

%sconv(f1,f2,t1,t2,0.1);
%plot(t1,g5);
t0=t1(1)+t2(1);
t3=length(f1)+length(f2)-2;
p = 0.1;
t=t0:p:t0+t3*p;
plot(t,y);
axis([-10,15,-1.5,1.5]);
title("2.2.2");

function [f,k]=sconv(f1,f2,k1,k2,p)

%���������źž������f(t)=f1(t)*f2(t)

%f:�������f(t)��Ӧ�ķ�����ֵ����

%k:f(t)�Ķ�Ӧʱ������

%f1��f1��t��������ֵ����

%f2��f2��t)�ķ�����ֵ����

%k1��f1��t���Ķ�Ӧʱ������

%k2:f2(t)�Ķ�Ӧʱ������

%p��ȡ��ʱ����

f=conv(f1,f2);

f=f*p;
k0=k1(1)+k2(1);
k3=length(f1)+length(f2)-2;

k=k0:p:k0+k3*p;
subplot(2,2,1)

plot(k1,f1);

title('f1(t)');
end