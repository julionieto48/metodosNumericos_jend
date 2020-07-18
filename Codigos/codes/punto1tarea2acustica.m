%% Primer punto -Tarea 2 _Julián Esteban Nieto Díaz

clc

clear all

a=1.5;f=1000;c=343;po=10;t=0;w=2*pi*f;k=w/c;
x1=-4:0.0256:4;y1=-4:0.0256:4;

[x1,y1]=meshgrid(x1,y1);

r1=(((x1+(a/2)).^2)+(y1).^2).^(1/2);r2=(((-x1+(a/2)).^2)+(y1).^2).^(1/2);
p1=(po./r1).*sin(w*t-k*r1);p2=(po./r2).*sin(w*t-k*r2);
p=p1+p2;
%% Grafica
% por medio de contour

figure
contour(x1,y1,p)
colormap winter
c = colorbar;
c.Label.String = 'Elevation (Intensidad)';
title('Julian Esteban Nieto Díaz')

