function [mu,var]=computeBootstrapCI(data,sampleAmount)
data = data(1:sampleAmount);
dataMean = mean(data);
dataVars = abs(data - dataMean);
data=sort(data);
dataVars = sort(dataVars);
mu = [data(ceil(sampleAmount * 0.025)),data(ceil(sampleAmount*0.975))];
var = [dataVars(ceil(sampleAmount * 0.025)),dataVars(ceil(sampleAmount*0.975))];   