%experiment 2.4£¬3
%final
clc;
clear all;
close all;
 t = 0:0.1:10;
y1 = exp_2_4_4(10);
y2 = exp_2_4_4(100);
y3 = exp_2_4_4(1000);

subplot(4,1,1);
plot(t,y1);
title("4.3 10");

subplot(4,1,2);
plot(t,y2);
title("4.3 100");

subplot(4,1,3);
plot(t,y3);
title("4.3 1000");

subplot(4,1,4);
plot(t,y1,'r');
hold on
plot(t,y2,'g');
hold on
plot(t,y3,'b');
legend('10','100','1000');