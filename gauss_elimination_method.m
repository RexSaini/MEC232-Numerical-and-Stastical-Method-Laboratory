clear all
clc
format short

A=[25 5 1;64 8 1;144 12 1];
b=[106.8;177.2;279.2];
n=3;
Ab=[A,b];
alpha=A(2,1)/A(1,1);
Ab(2,:)=Ab(2,:)-alpha*Ab(1,:);
alpha=A(3,1)/A(1,1);
Ab(3,:)=Ab(3,:)-alpha*Ab(1,:);
alpha=Ab(3,2)/Ab(2,2);
Ab(3,:)=Ab(3,:)-alpha*Ab(2,:);

x=zeros(3,1);
x(3)=Ab(3,4)/Ab(3,3);
x(2)=(Ab(2,4)-(Ab(2,3)*x(3)))/Ab(2,2);
x(1)=(Ab(1,4)-Ab(1,3)*x(3)-(Ab(1,2)*x(2)))/Ab(1,1)
f=[36 6 1];
v=f*x
