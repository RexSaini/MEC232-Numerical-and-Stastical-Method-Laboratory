clear all
clc
format short

i=1;
x(i)=0;
y(i)=0;
z(i)=0;
err_x(i)=100;
err_y(i)=100;
err_z(i)=100;
while err_x(i)>0.001 && err_y(i)>0.001 && err_z(i)>0.001
  x(i+1)=(20-4*y(i)+2*z(i))/10;
  y(i+1)=(28-3*x(i+1)+z(i))/12;
  z(i+1)=(2-x(i+1)-4*y(i+1))/7;
  
  err_x(i+1)=abs(x(i+1)-x(i));
  err_y(i+1)=abs(y(i+1)-y(i));
  err_z(i+1)=abs(z(i+1)-z(i));
  
  i=i+1;
  
  fprintf('The value of x(%d) = %0.2f\tthe error is %f\n',i,x(i),err_x(i))
  fprintf('The value of y(%d) = %0.2f\tthe error is %f\n',i,y(i),err_y(i))
  fprintf('The value of z(%d) = %0.2f\tthe error is %f\n',i,z(i),err_z(i))
end

fprintf('\n')
x=x(end)
y=y(end)
z=z(end)