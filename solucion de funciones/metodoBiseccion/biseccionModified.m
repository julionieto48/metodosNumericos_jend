clc, clear all, close all
%%
inFun = input('Ingresar funcion');
fun = inline(inFun);
a = 1 ; b = 2; tolerancia = 0.001;

p = 0; i = 0; error = (b-a)/2; % error cambia cada que se aproxima a la raiz.. ya que en la primera iteracion error = 1
fprintf('\t i\t \t a\t \t p\t \tb \t\t error\n '); %construccion de la tabla \t espacio de tabulacion

while(error > tolerancia)
    p = (a+b)/2;
    disp([i,a,p,b,error])
    
    if ((fun(a) * fun(p))  < 0) % encontrar si hay cambio de signo
        b = p;
    elseif((fun(a)*fun(p))  > 0)
        a = p;
    end
    error = (b-a)/2;
    i = i + 1;
end
fprintf('Se encontro la raiz dada la tolerancia %f: \n  \t en el punto: %f \n ', tolerancia,p); % %f ahi se coloca la variable
 
% ' x^3 + 4*x^2 -10'
%%
% metodo acotado... se d aen un intervalo, dependencia de la tolerancia
% hay raiz siempre que f(a) y f(b) tengan signos contrarios
% s eevalua la funcion  en el punto central y se verifica si hay un cambio
% de signo... si el cambio de signo se da en el primer segmento, esta mitad
% representara el primer intervalo es decir b cambia su valor por el punto
% medio

% https://www.youtube.com/watch?v=idnu2cz1kTo&t=709s