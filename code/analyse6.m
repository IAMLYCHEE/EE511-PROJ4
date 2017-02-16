x = durationMu_15_bootstrap(1):0.001:durationMu_15_bootstrap(2);
y = ones(length(x),1);
stem(x,y);
hold on 
x = durationMu_15(1):0.001:durationMu_15(2);
y = 2*ones(length(x),1);
stem(x,y);
hold on
x = durationMu_po(1):0.001:durationMu_po(2);
y = 3*ones(length(x),1);
stem(x,y);
legend('bootstrap','CI sample','CI population')
