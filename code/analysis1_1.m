%for analysis
x = 500: 100 : 25000;
k = 1;
result = zeros(length(x),1);
for i= 500 : 100 : 25000
    result(k)=integral_fi(-2,2,i);
    k=k+1;
end
the = 93.16275*ones(length(x),1);
plot(x,result);
hold on 
plot(x,the);
xlabel('sample amount')
ylabel('simulation result')
title('how sample amount affect accuracy')
legend('simulation','theoretical')