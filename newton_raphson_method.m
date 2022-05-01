clear all;
clc;
tol=1e-3;
error=1;
count=0;
f=@(c)(c\668.06*(1-exp(-0.146843*c))-40);   %Newton Raphson Method
df=@(c)(-668.06/c^2+(0.146843*c+1)/(c^2*exp(0.146843*c)));
x=input('Initial approximation= ')
while error>tol
  x1=x-(f(x)/df(x))
  error=abs(x1-x);
  x=x1;
  count=count+1;
end
fprintf('Total iterations: %d\n',count)
fprintf('The root is= %f\n',x)
fprintf('The value of function at root= %f\n',f(x))