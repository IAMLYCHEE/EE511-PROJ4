function Fn = generateF10x(sample,lb,ub,isplot)
%Fn = generateF10x(sample,lb,ub,isplot)
%sample: the amount of samle 
%lb: the lower bound of x
%ub: the upper bound of x
%isplot: whether plot or not
X = zeros(sample, 1);
for i = 1 : sample 
    X(i) = sum( randn(4,1) .^2 );
end

k = length(lb: 0.05 : ub);
Fn = zeros(k , 1);
k = 1;
for x = lb : 0.05 : ub
    accsum = 0;
    for i = 1 : sample
        if X(i) < x
            accsum = accsum + 1;
        end
    end
    Fn(k) = accsum/sample;
    k = k + 1; 
end
if isplot
    plot((lb:0.05:ub),Fn);
    hold on 
    x = lb : 0.05 : ub;
    F_the = chi2cdf(x , 4);
    plot( x , F_the)
    hold off 
    xlabel('x')
    ylabel('probability')
    title('empirical distribution')
    legend('Empirical Simulation','theoretical')
end


