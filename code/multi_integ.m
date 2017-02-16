function result = multi_integ(eval_budget)
%result = multi_integ(va_amount, eval_budget)
%this is multiintegral with bound 0 to 1
%eval_budget: the amount of samples to draw
u = rand(eval_budget,2);
result = mean( exp( -1 * (u(:,1) + u(:,2)).^2));