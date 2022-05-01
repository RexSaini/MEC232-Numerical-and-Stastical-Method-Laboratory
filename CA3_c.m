%Name: Rohan Kumar Saini
%Roll no: RM2041A01
%Reg no: 12011878
%Question3
clear all;
clc;
disp('Secant method')
count=0;
f=@(c)(exp(-c)-c);
x(1)=input('1st guess: ');
x(2)=input('2nd guess: ');
for n=3:50
  x(n)=(x(n-2)*f(x(n-1))-x(n-1)*f(x(n-2)))/(f(x(n-1))-f(x(n-2)));
  if abs(x(n)-x(n-1))<0.001 && f(x(n))<0.001
    root=x(n);
    break
  end
  count=count+1;
end
fprintf('Total iterations: %d\n',count)
fprintf('The root is %f\n',x(n))
fprintf('The value of function at root is= %f\n',f(x(n)))

fprintf('\n')

clear all;
disp('Newton Raphson method')
tol=0.001;
error=1;
count=0;
f=@(x)(exp(-x)-x);
df=@(x)(-exp(-x)-1);
x=input('Initial approximation= ');
while error>tol
  x1=x-(f(x)/df(x));
  error=abs(x1-x);
  x=x1;
  count=count+1;
end
fprintf('Total iterations: %d\n',count)
fprintf('The root is= %f\n',x)
fprintf('The value of function at root= %f\n',f(x))