clear;
clc;
%angles given in radians
thetap=-((19.18)*(pi/180));
theta1=0;
%coupler lengths given in inches
AP=5.1475;
OC=7;
OA=3;
AB=6;
BC=5;
n=1;
for n=1:361
    theta2(n)=((n-1)*(pi/180));
    OA_=OA*[cos(theta2(n)),sin(theta2(n)),0]; %setting known vectors
    OC_=OC*[cos(theta1),sin(theta1),0];
    syms theta3 theta4 %solving for unknown vector angles
    assume(theta3<0 & theta3>-pi);
    assume(theta4<0 & theta4>-pi);
    AB_=AB*[cos(theta3),sin(theta3),0];
    BC_=BC*[cos(theta4),sin(theta4),0];
    eq=OA_+AB_-BC_-OC_;
    soln=solve(eq(1),eq(2),theta3,theta4);
    theta3=eval(soln.theta3);
    theta4=eval(soln.theta4);
    AP_=AP*[cos(theta3+thetap),sin(theta3+thetap),0]; %creating vector from O to P
    OP_=OA_+AP_;
    Px1(n)=OP_(1);
    Py1(n)=OP_(2);
end
plot(Px1,Py1,LineStyle="-") %plotting curve 1
hold on

thetap=-((69.18)*(pi/180));
AP=7.1475;
n=1;
for n=1:361
    theta2(n)=((n-1)*(pi/180));
    OA_=OA*[cos(theta2(n)),sin(theta2(n)),0]; %setting known vectors
    OC_=OC*[cos(theta1),sin(theta1),0];
    syms theta3 theta4 %solving for unknown vector angles
    assume(theta3<0 & theta3>-pi);
    assume(theta4<0 & theta4>-pi);
    AB_=AB*[cos(theta3),sin(theta3),0];
    BC_=BC*[cos(theta4),sin(theta4),0];
    eq=OA_+AB_-BC_-OC_;
    soln=solve(eq(1),eq(2),theta3,theta4);
    theta3=eval(soln.theta3);
    theta4=eval(soln.theta4);
    AP_=AP*[cos(theta3+thetap),sin(theta3+thetap),0]; %creating vector from O to P
    OP_=OA_+AP_;
    Px2(n)=OP_(1);
    Py2(n)=OP_(2);
end
plot(Px2,Py2,LineStyle="--") %plotting curve 2
hold on

thetap=-((129.18)*(pi/180));
AP=9.1475;
n=1;
for n=1:361
    theta2(n)=((n-1)*(pi/180));
    OA_=OA*[cos(theta2(n)),sin(theta2(n)),0]; %setting known vectors
    OC_=OC*[cos(theta1),sin(theta1),0];
    syms theta3 theta4 %solving for unknown vector angles
    assume(theta3<0 & theta3>-pi);
    assume(theta4<0 & theta4>-pi);
    AB_=AB*[cos(theta3),sin(theta3),0];
    BC_=BC*[cos(theta4),sin(theta4),0];
    eq=OA_+AB_-BC_-OC_;
    soln=solve(eq(1),eq(2),theta3,theta4);
    theta3=eval(soln.theta3);
    theta4=eval(soln.theta4);
    AP_=AP*[cos(theta3+thetap),sin(theta3+thetap),0]; %creating vector from O to P
    OP_=OA_+AP_;
    Px3(n)=OP_(1);
    Py3(n)=OP_(2);
end
plot(Px3,Py3,'k:') %plotting curve 3
xlabel('horizontal distance, in.')
ylabel('vertical distance, in.')
legend('curve 1','curve 2','curve 3')

