%experiment 2.4��2
%����Ҷϵ��
clc;
clear all;
close all;

fs=10;N=125;   %����Ƶ�ʺ����ݵ���
n=0:N-1;
t=n/fs;   %ʱ������


%t = 0:0.01:4*pi;
y= (pi/2-t/2).*(heaviside(t)-heaviside(t-2*pi)) + (pi/2-(t-2*pi)/2).*(heaviside(t-2*pi)-heaviside(t-4*pi));
subplot(1,3,1),plot(t,y); 
%plot(t,y);
axis([0,4*pi,-2,2]);
%fy=fourier(y);

% fs=100;N=128;   %����Ƶ�ʺ����ݵ���
% n=0:N-1;t=n/fs;   %ʱ������
%x=0.5*sin(2*pi*15*t)+2*sin(2*pi*40*t); %�ź�
fy=fft(y,N);    %���źŽ��п���Fourier�任
mag=abs(fy);     %���Fourier�任������
f=n*fs/N;    %Ƶ������
subplot(1,3,2),plot(f,mag);   %�����Ƶ�ʱ仯�����
xlabel('Ƶ��/Hz');
ylabel('���');title('N=125');grid on;
subplot(1,3,3),plot(f(1:N/2),mag(1:N/2)); %���NyquistƵ��֮ǰ��Ƶ�ʱ仯�����
xlabel('Ƶ��/Hz');
ylabel('���');title('N=125');grid on;
