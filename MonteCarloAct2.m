X = linspace(0,1,20000);
C = sqrt(1-X.^2);
plot(X,C)
hold on
rX = rand(1,length(X));
rY = rand(1,length(X));
rC = sqrt(1-rX.^2);
pY = rY(rY<=rC);
pX = rX(rY<=rC);
scatter(pX,pY,"r.")
axis equal
4*length(pX)/length(X)