function [mu,var] = computeCI(data,sampleAmount)
dataSample = data(1:sampleAmount);
pd = fitdist(dataSample,'Normal');
CI = paramci(pd);
mu = CI(:,1);
var = CI(:,2);
