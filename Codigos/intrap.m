function [ in ] = intrap( y,a,b)
%programa para aproximar integrales por el método
%de los trapecios, este método solo funciona para
%funciones continuas e el intervalo [a,b] y positivas en ese intervalo
%   Autor Julio Echeverri

syms x

n=400;     %se define el número de subintervalos, la precision se puede aumentar, aumentado N
dx=(b-a)/n; %se crea el delta X para ir barriendo el intervalo en pasos de delta X
in=subs(y,a); %se evalua el primer termino de la sumatoria Xo
for i=2:n     %se pone i en 2 para descontar el primer y ultimo termino de la sumatoria
    a=a+dx;  %se aumenta el valor inicial en delta X en cada iteracion
    in=in+2*subs(y,a); %se aplica la formula
end
in=in+subs(y,a+dx); %se evalua el ultimo termino de la sumatoria
in=in*(dx/2); %de multiplica por dx/2 segun la formula propuesta en el método
end