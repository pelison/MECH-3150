clear;
clc;

B = 2;
B_ = [-1.6 1.2 0];
A_= [4 2 0];
C_=A_+B_




theta_B=(atan2(B_(2),B_(1)))*(180/pi)


C=sqrt(C_(1)^2+C_(2)^2)
theta_C=(atan2(C_(2),C_(1)))*(180/pi)

B_A_=B_-A_;
A_B_=A_-B_;

BA=sqrt(B_A_(1)^2+B_A_(2)^2)
AB=sqrt(A_B_(1)^2+A_B_(2)^2)

theta_BA=(atan2(B_A_(2),B_A_(1)))*(180/pi)
theta_AB=(atan2(A_B_(2),A_B_(1)))*(180/pi)



D_=cross(A_,B_)
E_=cross(B_,A_)
F_=cross(A_,C_)