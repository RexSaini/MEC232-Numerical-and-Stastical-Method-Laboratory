clear all;
clc;
count=0;
f=@(c)(c\668.06*(1-exp(-0.146843*c))-40);
x(1)=input('1st guess: ');
x(2)=input('2nd guess: ');
for n=3:50
  x(n)=(x(n-2)*f(x(n-1))-x(n-1)*f(x(n-2)))/(f(x(n-1))-f(x(n-2)));   %Secant method
  if abs(x(n)-x(n-1))<0.0001 && f(x(n))<0.001
    root=x(n);
    break
  end
  count=count+1;
end
fprintf('Total iterations: %d\n',count)
fprintf('The root is %f\n',x(n))
fprintf('The value of function at root is %f\n',f(x(n)))