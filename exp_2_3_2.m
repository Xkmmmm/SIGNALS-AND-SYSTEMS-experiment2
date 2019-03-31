%experiment 2.3.dierban
%xcorr 自相关
clc;
clear all;
close all;

t = -1000:1:1000;
y = randn(1,length(t));
[M1,M2] = autocorr(y,1000);
%[ACF,lags,bounds] = autocorr(Series,nLags,M,nSTDs) % 计算并返回ACF
%lags类似步长

%或者用 y = wgn(1,n,0);  n随机取值
% fs = 500;
% T = 10;
% n = round(T*fs);%采样点个数
% t2 = linspace(0,T,n);
%t2 = 0:1:1000;
y2 = wgn(1,1000,0);%LFM信号
[M3,M4] = autocorr(y2,999);
%s = xcorr(y2);

subplot(4,1,1);
plot(t,y);
title("高斯白噪声randn");

subplot(4,1,2);
plot(y2);
title("高斯白噪声wgn");

subplot(4,1,3);
plot(M2,M1);
title("自相关函数randn");

subplot(4,1,4);
plot(M4,M3);
title("自相关函数wgn");
