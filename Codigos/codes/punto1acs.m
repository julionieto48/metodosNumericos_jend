clc
clear all


t=0;f=1000;omega=(2*pi)*f;c=343;p0=10;a=1.5;k=omega/c;

[r1,r2] = meshgrid(-4:.2:4,-4:.2:4);

p1=(p0./r1).*sin(omega*t-k.*r1);p2=(p0./r2).*sin(omega*t-k.*r2);

pT=p1+p2;

figure
title('Julian Nieto')
[C,h] = contour(r1,r2,pT);


