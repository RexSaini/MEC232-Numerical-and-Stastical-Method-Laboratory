%Name: Rohan Kumar Saini
%Roll no: RM2041A01
%Reg no: 12011878
%Question1
clear all;
clc;
a=input('value of a= ');
b=input('value of b= ');
tol=0.001;
count=0;
f=@(c)(c\(9.8*68.1)*(1-exp(-0.146813*c))-40);
while f(a)*f(b)>0
  b=input('value of b= ');
  a=input('value of a= ');
end
while abs(b-a)>tol
  c=(a+b)/2;
  if f(a)*f(c)<0
    b=c;
  else
    a=c;
  end
  count=count+1;
end
fprintf('total iterations: %d\n',count)
fprintf('The root is %1.10f\nThe value of f(%f) is %f\n',c,c,f(c))
