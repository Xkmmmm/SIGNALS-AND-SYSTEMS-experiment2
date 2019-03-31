%experiment 2.4，1
%猜测函数
clc;
clear all;
close all;
m = 0:0.1:10;
sum = zeros(1,length(m));
count = 1;
for t = m
    for n = 1:1:1000
        sum(count) = sum(count)+ (sin(n.*t) ./ n);
       
    end
       count = count+1; 
end
subplot(2,1,1);
plot(m,sum);

title("4.1题给");

t1 = 0:0.1:10;
t2 = 0:0.1:10;
t3 = zeros(1,length(t2));
for i = 1:1:length(t2)
    while(t2(i)>2*pi)
        t2(i) = t2(i)- 2*pi;
    end
    t3(i) = t2(i);
    i = i+1;
end

%y2 = 1.5 - 3/(2*pi)*t2;
y2 = pi/2 - t2/2;
subplot(2,1,2);
plot(t1,y2)
title("4.1猜测y = pi/2 - t/2（分段 周期2pi）");
