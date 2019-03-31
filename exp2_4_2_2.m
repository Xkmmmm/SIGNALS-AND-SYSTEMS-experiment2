%experiment 2.4，2
%傅里叶系数
clc;
clear all;
close all;

fs=10;N=125;   %采样频率和数据点数
n=0:N-1;
t=n/fs;   %时间序列


%t = 0:0.01:4*pi;
y= (pi/2-t/2).*(heaviside(t)-heaviside(t-2*pi)) + (pi/2-(t-2*pi)/2).*(heaviside(t-2*pi)-heaviside(t-4*pi));
subplot(1,3,1),plot(t,y); 
%plot(t,y);
axis([0,4*pi,-2,2]);
%fy=fourier(y);

% fs=100;N=128;   %采样频率和数据点数
% n=0:N-1;t=n/fs;   %时间序列
%x=0.5*sin(2*pi*15*t)+2*sin(2*pi*40*t); %信号
fy=fft(y,N);    %对信号进行快速Fourier变换
mag=abs(fy);     %求得Fourier变换后的振幅
f=n*fs/N;    %频率序列
subplot(1,3,2),plot(f,mag);   %绘出随频率变化的振幅
xlabel('频率/Hz');
ylabel('振幅');title('N=125');grid on;
subplot(1,3,3),plot(f(1:N/2),mag(1:N/2)); %绘出Nyquist频率之前随频率变化的振幅
xlabel('频率/Hz');
ylabel('振幅');title('N=125');grid on;
