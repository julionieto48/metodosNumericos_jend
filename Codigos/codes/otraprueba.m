clc
clear all


t=0;
f=1000;
omega=(2*pi)*f;
c=343;
p0=10;
a=1.5;
k=omega/c;


[r1,r2] = meshgrid(-2:.2:2,-2:.2:2);

p1=p0./r1.*sin(omega.*t-k.*r1);
p2=p0./r2.*sin(omega.*t-k.*r2);


pT=p1+p2;


[C,h] = contour(r1,r2,pT);
set(h,'ShowText','on','TextStep',get(h,'LevelStep')*2)
colormap cool