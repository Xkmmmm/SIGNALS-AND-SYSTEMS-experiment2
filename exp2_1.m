%experiment 2.1
%https://www.cnblogs.com/barrier/p/6685987.html
clc;
clear all;
close all;

%�弤��Ӧ
sys = tf([2,1],[1,4,3]);
t = 0:0.1:10;
y = impulse(sys,t);

%��Ծ��Ӧ
sys2 = tf([2, 1], [1, 4, 3]);
t2 = 0:0.1:10;
y2 = step(sys2, t2);

%��ͼ
figure;
subplot(2,1,1);
plot(t,y);
title('�弤��Ӧ');
subplot(2,1,2);
plot(t2,y2);
title('��Ծ��Ӧ');
