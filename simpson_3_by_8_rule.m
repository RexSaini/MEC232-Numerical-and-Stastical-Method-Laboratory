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
for j=1:(n-1)/2
  yodd(j)=y(2*j+1);
end
for j=1:(n/2)
  yeven(j)=y(2*j);
end
for j=1:(n/3)
  ymulti(j)=y(3*j);
end

threebyeight=(3*h/8)*(y(1)+y(end)+2*(sum(ymulti))+3*(sum(y)-y(1)-y(end)-sum(ymulti)))