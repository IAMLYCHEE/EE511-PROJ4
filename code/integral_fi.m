function result = integral_fi(a,b,eval_budget)
%b is the upper bound of the integral
%a is the lower bound of the integral
%eval_budget determines the amount of samples generated to evaluate
unif_samples = rand(eval_budget,1);
x = (b - a) * unif_samples + a;
g_x = exp(x.^2 + x);
result = (b - a).*mean(g_x);
