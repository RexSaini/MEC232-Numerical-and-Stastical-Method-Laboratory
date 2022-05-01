%Name: Rohan Kumar Saini
%Roll no: RM2041A01
%Reg no: 12011878
%Question2
clear all;
clc;
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