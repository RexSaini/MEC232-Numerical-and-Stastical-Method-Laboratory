clear all;
clc;
a=input('value of a= ');
b=input('value of b= ');
tol=0.0001;
count=0;
f=@(c)(c\668.06*(1-exp(-0.146843*c))-40);   %@(c) is anonymous function operator 
while f(a)*f(b)>0
  b=input('value of b= ');
  a=input('value of a= ');
end
while abs(b-a)>tol
  c=(a+b)/2   %Bisection method
  if f(a)*f(c)<0
    b=c;
    fprintf('new int (%1.10f, %1.10f)\t',a,b)
  else
    a=c;
    fprintf('new int (%1.10f, %1.10f)\t',a,b)
  end
  fprintf('new approx %1.10f\n',c)
  count=count+1;
end
fprintf('total iterations: %d\n',count)
fprintf('\tthe root is %1.10f\n value of f(%f) is %f\n',c,c,f(c))
