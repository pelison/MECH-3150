clear;
clc;

%importing data and initializing variables
ax=[50;50;20;0;0;-10;-20;-20;-10;0;0;0;0;-30;-40;-50;-20;0;0;0;20;30;40;30;0;0;0;0;0;0];
ay=[-10;-20;0;0;0;-25;-25;-25;0;0;0;0;0;30;40;30;20;20;0;0;0;0;0;30;0;0;0;0;0;0];
ax=ax';
ay=ay';
vx=zeros(30,1);
vy=zeros(30,1);
x=zeros(30,1);
y=zeros(30,1);
n=0;
vxmax=0;
vymax=0;
tvxmax=0;
tvymax=0;
xmax=0;
ymax=0;
txmax=0;
tymax=0;
%using trap method with forward difference
for t=1:29
vx(t+1)=vx(t)+ax(t+1);
vy(t+1)=vy(t)+ay(t+1);
x(t+1)=x(t)+vx(t+1);
y(t+1)=y(t)+vy(t+1);
%assigning max velocity and position
if abs(vx(t+1))>vxmax
    vxmax=abs(vx(t+1));
    tvxmax=t+1;
end

if abs(vy(t+1))>vymax
    vymax=abs(vy(t+1));
    tvymax=t+1;
end

if abs(x(t+1))>xmax
    xmax=abs(x(t+1));
    txmax=t+1;
end

if abs(y(t+1))>ymax
    ymax=abs(y(t+1));
    tymax=t+1;
end  

end
