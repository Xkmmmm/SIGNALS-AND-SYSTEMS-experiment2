%experiment 2.3.dierban
%xcorr �����
clc;
clear all;
close all;

t = -1000:1:1000;
y = randn(1,length(t));
[M1,M2] = autocorr(y,1000);
%[ACF,lags,bounds] = autocorr(Series,nLags,M,nSTDs) % ���㲢����ACF
%lags���Ʋ���

%������ y = wgn(1,n,0);  n���ȡֵ
% fs = 500;
% T = 10;
% n = round(T*fs);%���������
% t2 = linspace(0,T,n);
%t2 = 0:1:1000;
y2 = wgn(1,1000,0);%LFM�ź�
[M3,M4] = autocorr(y2,999);
%s = xcorr(y2);

subplot(4,1,1);
plot(t,y);
title("��˹������randn");

subplot(4,1,2);
plot(y2);
title("��˹������wgn");

subplot(4,1,3);
plot(M2,M1);
title("����غ���randn");

subplot(4,1,4);
plot(M4,M3);
title("����غ���wgn");
