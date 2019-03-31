%experiment 2.4£¬4
%final
clc;
clear all;
close all;
 t = 0:0.1:10;
y1 = exp_2_4_42(40);
y2 = exp_2_4_42(70);
y3 = exp_2_4_42(160);

subplot(4,1,1);
plot(t,y1);
title("4.4 40");

subplot(4,1,2);
plot(t,y2);
title("4.4 70");

subplot(4,1,3);
plot(t,y3);
title("4.4 160");

subplot(4,1,4);
plot(t,y1,'r');
hold on
plot(t,y2,'g');
hold on
plot(t,y3,'b');
legend('40','70','160');



