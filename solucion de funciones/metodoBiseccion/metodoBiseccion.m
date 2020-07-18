clc , clear all , close all
%%
% *Metodo Biseccion*
%%
% usando funcion polyval(variable, punto);


coef = [1 1 0]; % construir coeficientes polinomio  x^2 + x

coef1 = [1 4 0 -10]; % polinomio  x^3 + 4x^2 -10
x = 1:10;
func = polyval(coef1, x);

inferior = x(1); superior = x(2); dato = 0;
bandera = 'F';

while(inferior <= superior)
    mitad = (inferior + superior) / 2;
    
    if(func(mitad) == dato)
        bandera = 'V';
        break   
    end
    if(func(mitad) > dato)
        superior = mitad;
        mitad = (inferior + superior) / 2;  
    end
    if(func(mitad) < dato)
        inferior = mitad;
        mitad = (inferior + superior) / 2;  
    end
    
end
if (bandera == 'V')
    fprintf(' %s encontrado en: \n ' , mitad)
end
    






%%
% https://la.mathworks.com/help/matlab/ref/colon.html
% https://www.youtube.com/watch?v=MUCwZKPntXg
% https://www.youtube.com/watch?v=idnu2cz1kTo