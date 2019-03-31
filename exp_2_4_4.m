%experiment 2.4£¬4
%²Â²âº¯Êý
function [y] = exp_2_4_4(k)
    m = 0:0.1:10;
    sum = zeros(1,length(m));
    count = 1;
    for t = m
        for n = 1:1:k
            sum(count) = sum(count)+ (sin(n.*t) ./ n);
       
        end
       count = count+1; 
    end
    y = sum;