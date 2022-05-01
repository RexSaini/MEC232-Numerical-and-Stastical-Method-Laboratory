%Name: Rohan Kumar Saini
%Roll no: RM2041A01
%Reg no: 12011878
%Question1
clear all
clc

n=input('Enter number of intervals: ');
a=input('lower limit: ');
b=input('upper limit: ');
h=(b-a)/n;
x=a:h:b
j=1;
for i=a:h:b
  y(j)=5*i+3;
  j=j+1;
end

trap=(0.5*h)*(y(1)+y(end)+2*(sum(y)-y(1)-y(end)))