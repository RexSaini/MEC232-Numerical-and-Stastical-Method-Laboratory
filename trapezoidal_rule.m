%3x^2+2x-1
clear all
clc

n=input('Enter number of intervals: ');
a=input('lower limit: ');
b=input('upper limit: ');
h=(b-a)/n;
x=a:h:b
j=1;
for i=a:h:b
  y(j)=3*i^2+2*i-1;
  j=j+1;
end

trap=(0.5*h)*(y(1)+y(end)+2*(sum(y)-y(1)-y(end)))