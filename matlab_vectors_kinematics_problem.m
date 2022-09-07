clear;
clc;
Va=80;
ra=30;
theta_d=40;
phi_d=70;
theta=theta_d*(pi/180);
phi=phi_d*(pi/180);
ra_=[ra*cos(theta) ra*sin(theta) 0];
Va_=[Va*cos(phi) Va*sin(phi) 0];
omega=[0 0 -5];
Vb_=Va_+cross(omega,ra_)
theta_vb=atan2(Vb_(2),Vb_(1))
thetad_vb=theta_vb*(180/pi)
Vb=sqrt(Vb_(1)^2+Vb_(2)^2)