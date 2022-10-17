gaussdist = @(x,s,m) (1/(s*sqrt(2*pi)))*exp(-(((x-m)/s).^2)/2);
X = linspace(-5,7,20000);
g = gaussdist(X,sqrt(3),1);
plot(X,g)
hold on
rX = 12*rand(1,length(X))-5;
rY = max(g)*rand(1,length(X));
rg = gaussdist(rX,sqrt(3),1);
pY = rY(rY<=rg);
pX = rX(rY<=rg);
scatter(pX,pY,"r.")
length(pY)/length(rY)
mean(pX)
var(pX)
length(pX)/length(X)