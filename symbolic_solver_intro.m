clear;
clc;
% syms x y
% eq1=3*x+2*y-7;
% eq2=2*x-y-5;
% soln=solve(eq1,eq2,x,y);
% x=eval(soln.x);
% y=eval(soln.y);
% x
% y

Va=80;
r=30;
theta=40*pi/180;
beta=340*pi/180;
phi=70*pi/180;
r_=r*[cos(theta) sin(theta) 0];
Va_=Va*[cos(phi) sin(phi) 0];

syms Vb omega
Vb_=Vb*[cos(beta) sin(beta) 0];
omega_=[0 0 omega];
Vbr_=cross(omega_,r_);
Vb_eq=Va_+Vbr_-Vb_;
Vb_sol=solve(Vb_eq(1),Vb_eq(2),omega,Vb);
omega=eval(Vb_sol.omega)
Vb=eval(Vb_sol.Vb)






r1=30;
r2=65;
r3=70;
r4=40;

theta1=40*pi/180;
theta3=0;

r1_=r1*[cos(theta1) sin(theta1) 0];
r3_=r3*[cos(theta3) sin(theta3) 0];

syms theta2 theta4
assume(theta2>0 & theta2<pi);
assume(theta4>0 & theta4<pi);

r2_=r2*[cos(theta2) sin(theta2) 0];
r4_=r4*[cos(theta4) sin(theta4) 0];

eq=r1_+r2_-r3_-r4_;
soln=solve(eq(1), eq(2), theta2, theta4);
theta2=eval(soln.theta2)*180/pi
theta4=eval(soln.theta4)*180/pi