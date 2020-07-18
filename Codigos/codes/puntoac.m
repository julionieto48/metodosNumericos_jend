clc
clear all
x= linspace(-4,4);y = linspace(-4,4);
[X,Y]= meshgrid(x,y);


t=0;f=1000;c=343;po=10;a=1.5;om=2*pi*f;k=om/c;
xt=((po./X).*sin(-k.*X));
yt=((po./Y).*sin(-k.*Y));
Z=xt+yt;

figure

[C,h]=contour(X,Y,Z);
title('Julian Nieto')