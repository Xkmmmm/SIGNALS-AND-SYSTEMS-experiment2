%experiment 2.1
%https://www.cnblogs.com/barrier/p/6685987.html
clc;
clear all;
close all;

%³å¼¤ÏìÓ¦
sys = tf([2,1],[1,4,3]);
t = 0:0.1:10;
y = impulse(sys,t);

%½×Ô¾ÏìÓ¦
sys2 = tf([2, 1], [1, 4, 3]);
t2 = 0:0.1:10;
y2 = step(sys2, t2);

%»­Í¼
figure;
subplot(2,1,1);
plot(t,y);
title('³å¼¤ÏìÓ¦');
subplot(2,1,2);
plot(t2,y2);
title('½×Ô¾ÏìÓ¦');
