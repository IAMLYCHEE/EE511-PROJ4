function result = integral_inf(a,eval_budget)
%result = integral_inf(a,eval_budget)
%a : the input lower bound , a >= 0 
%eval_budget: the amount of samples to get the result 

y = rand(eval_budget,1)+1e-10; %y>0
x = y.^(-1) - (1 - a); %translate the range
%since this is an even symmetry function we only need to calculate half of the integral
result = 2*mean( exp(- x.^2) ./ (y.^2) ); 
