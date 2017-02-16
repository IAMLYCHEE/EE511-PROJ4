clear
%generate the theoretical chi-square distribution cdf
x = 0 : 0.05 : 10;
F_the = chi2cdf(x , 4);
F_the = F_the';
%generate simulation with 10 samples
Fn = generateF10x(100,0,10,true);
%compute differences
diff = abs( Fn - F_the );
maxDiff = max(diff);

xSize = length(x);
e25 = Fn(round(xSize*0.25));
e50 = Fn(round(xSize*0.50));
e90 = Fn(round(xSize*0.90));
the25 = F_the(round(xSize*0.25));
the50 = F_the(round(xSize*0.50));
the90 = F_the(round(xSize*0.90));

    


