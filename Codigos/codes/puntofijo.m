function [x,xvect,nit]=puntofijo(g,x0,maxiter,tolerancia)
nit=0; xvect=x0; x=x0; % Inicializando
err=tolerancia+1; % Garantiza al menos 1 ejecucion
while (nit < maxiter & err > tolerancia),
nit=nit+1;
xn=g(x);
xvect=[xvect;xn]; % Agregamos el valor nuevo
err=abs(xn-x); % Calculamos error absoluto
x=xn;
end
if nit == maxiter,
disp('Alcanzado el max de iteraciones admisible')
end