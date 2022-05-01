clear all
clc

format short g
n=input('Enter degree of polynomial: ');
t=[0.0 0.5 1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0];
w=[6.00 4.83 3.70 3.15 2.41 1.83 1.49 1.21 0.96 0.73 0.64];
p=polyfit(t,w,n) 

tp=0.0:0.1:5;
wp=polyval(p,tp);
plot(t,w,'o',tp,wp)