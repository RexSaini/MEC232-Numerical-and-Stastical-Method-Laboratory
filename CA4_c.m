%Name: Rohan Kumar Saini
%Roll no: RM2041A01
%Reg no: 12011878
%Question3
clear all
clc
format short g

t=[0.0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5];
w=[6 4.83 3.7 3.15 2.41 1.83 1.49 1.21 0.96 0.73 0.64];
p=polyfit(t,w,4)
tp=0.0:0.1:5;
wp=polyval(p,tp);
plot(t,w,'o',tp,wp)