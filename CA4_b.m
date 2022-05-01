%Name: Rohan Kumar Saini
%Roll no: RM2041A01
%Reg no: 12011878
%Question2
clear all
clc

n=input('Enter number of intervals: ');
a=input('lower limit: ');
b=input('upper limit: ');
h=(b-a)/n;
x=a:h:b
j=1;
for i=a:h:b
  y(j)=7*i^2-4*i+1;
  j=j+1;
end
for j=1:(n-1)/2
  yodd(j)=y(2*j+1);
end
for j=1:(n/2)
  yeven(j)=y(2*j);
end

onebythree=(h/3)*(y(1)+y(end)+4*(sum(yodd))+2*(sum(yeven)))