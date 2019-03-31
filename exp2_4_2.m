%experiment 2.4£¬1
%²Â²âº¯Êý
clc;
clear all;
close all;
m = 0:0.1:10;
sum = zeros(1,length(m));
count = 1;
for t = m
    for n = 1:1:1000
        sum(count) = sum(count)+ (cos(n.*t) ./ n);
       
    end
       count = count+1; 
end

plot(m,sum);

title("4.2 cos ");