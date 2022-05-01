%Name: Rohan Kumar Saini
%Roll Number:RM2041A01
%Registration Number:12011878
%Question1
t=3.2;
a=(e^(2*t))/2-3.81*t^3
b=(6*t^2+6*t-2)/(t^2-1)

%Question3
G=[ones(3,5);zeros(2,3) ones(2,2)]

%Question5
mu=0.35;
theta=[5 10 15 20 25 30 35]
F1=(70*mu)/(mu*sind(theta(:,1))+cosd(theta(:,1)));
F2=(70*mu)/(mu*sind(theta(:,2))+cosd(theta(:,2)));
F3=(70*mu)/(mu*sind(theta(:,3))+cosd(theta(:,3)));
F4=(70*mu)/(mu*sind(theta(:,4))+cosd(theta(:,4)));
F5=(70*mu)/(mu*sind(theta(:,5))+cosd(theta(:,5)));
F6=(70*mu)/(mu*sind(theta(:,6))+cosd(theta(:,6)));
F7=(70*mu)/(mu*sind(theta(:,7))+cosd(theta(:,7)));
F=[F1 F2 F3 F4 F5 F6 F7]
plot(theta,F)
MinF=min(F)