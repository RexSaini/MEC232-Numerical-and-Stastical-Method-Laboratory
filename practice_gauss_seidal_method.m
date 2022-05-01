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
for i=1:50
  x(i+1)=(106.8-5*y(i)-z(i))/25;
  y(i+1)=(177.2-z(i)-64*x(i+1))/8;
  z(i+1)=(279.2-144*x(i+1)-12*y(i+1));
  
  if err_x(i)>0.0001 && err_y(i)>0.0001 && err_z(i)>0.0001
  err_x(i+1)=abs(x(i+1)-x(i));
  err_y(i+1)=abs(y(i+1)-y(i));
  err_z(i+1)=abs(z(i+1)-z(i));
  end
  i=i+1;
  fprintf('The value of x(%d) = %0.2f\tthe error is %f\n',i,x(i),err_x(i))
  fprintf('The value of y(%d) = %0.2f\tthe error is %f\n',i,y(i),err_y(i))
  fprintf('The value of z(%d) = %0.2f\tthe error is %f\n',i,z(i),err_z(i))
end

fprintf('\n')
x=x(end)
y=y(end)
z=z(end)
f=[36 6 1];
a=[x(end);y(end);x(end)];
fprintf('\nVelocity\n')
v=f*a