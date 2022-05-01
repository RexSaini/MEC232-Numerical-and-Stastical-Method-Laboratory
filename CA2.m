%Name: Rohan Kumar Saini
%Roll Number: RM2041A01
%Registration Number: 12011878
%CA2

%Question1
format short
k=8;
x=5*pi/6;
y=zeros(1,k);
fprintf('The value of x is 150 degrees\n')
for i=0:k-1     %R=8 terms 0-7
  y(i+1)=(-1)^i*x^(2*i+1)/factorial(2*i+1);
end
sin_x=sum(y)

%Question2
format long g
A=[1 1 1 1 1 1;25 40 60 70 32 0;0 1 -1 0 0 0;0 1 0 1 -10 0;-1 1 1 0 0 0;1 0 1 0 -4 -4];
C=[800000;4897000;11000;0;0;0];
fprintf('\nNumber of seats for each category')
X=A\C;
fprintf('\nNumber of students: %d',X(1,:)) 
fprintf('\nNumber of alumni: %d',X(2,:))
fprintf('\nNumber of faculty: %d',X(3,:)) 
fprintf('\nNumber of public: %d',X(4,:)) 
fprintf('\nNumber of veterans: %d',X(5,:)) 
fprintf('\nNumber of guests: %d\n',X(6,:))  