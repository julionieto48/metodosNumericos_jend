clc 
clear all
format long
disp('-Derivacion Numérica- Julián Esteban Nieto Díaz -')

syms x
h=input('Ingrese h');
f(x)=exp(-3*x^2-2)*cos(sqrt(x^2+1));xo=1.3716;

fxo=f(xo);fh=f(h);




%derivada como rta 
d=diff(f,x);r=d(xo);disp('derivada real');dr=eval(r)
%mm(x)=6*x*exp(- 3*x^2 - 2)*cos((x^2 + 1)^(1/2)) - (x*sin((x^2 + 1)^(1/2))*exp(- 3*x^2 - 2))/(x^2 + 1)^(1/2);


%grafica

x=linspace(-3,5);
figure
subplot(2,1,1);
plot(x,f(x))
grid on
title('funcion')

subplot(2,1,2);
plot(x,mm(x))
grid on
title('derivada')


% dos puntos 
dos=(1/h)*(f(xo+h)-fxo);doss=eval(dos);

% tres puntos
tresr=(1/(2*h))*(-3*f(xo)+4*f(xo+h)-f(xo+2*h));trreg=eval(tresr);
tresc=(1/(2*h))*(f(xo+h)-f(xo-h));trcent=eval(tresr);


% cinco puntos

cincoc=(1/(12*h))* (f(xo-2*h)-8*f(xo-h)+8*f(xo+h)-f(xo-2*h)) ;cincent=eval(cincoc);
cincor=(1/(12*h))*(-25*f(xo)+48*f(xo+h)-36*f(xo+2*h)+16*f(xo+3*h)-3*f(xo+4*h));cinreg=eval(cincor);



% tablas
disp('tablas')
% dos puntos

fprintf ('h(%i) 2puntos(%f) \n',h,doss);

%tres puntos

fprintf ('h(%i) 3puntosregresiva(%f) 3puntoscentrada(%f) \n',h,trreg,trcent);

% cinco puntos
fprintf ('h(%i) 5puntosregresiva(%f) 5puntoscentrada(%f) \n',h,cinreg,cincent);


% calculo de error
disp('error')
uno=(dr-doss)/dr;dos=(dr-trreg)/dr;tres=(dr-trcent)/dr;cuatro=(dr-cinreg)/dr;cinco=(dr-cincent)/dr;

fprintf ('h(%i) dospuntos(%f) trespuntosreg(%f) trespuntoscen(%f) cincopuntosreg(%f) cincopuntoscen(%f)\n',h,uno,dos,tres,cuatro,cinco)
