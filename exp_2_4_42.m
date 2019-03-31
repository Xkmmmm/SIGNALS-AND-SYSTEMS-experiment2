%experiment 2.4£¬4
%
function [y] = exp_2_4_42(n)
sum =0 ;    
for i = 1:1:n
     sum = sum + exp_2_4_4(i);
end
sum = sum/n;
y  = sum;
    