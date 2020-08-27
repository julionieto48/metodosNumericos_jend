
clc , clear all , close all
%%
% *Metodo Biseccion*
%%
% usando funcion polyval(variable, punto) haciendo uso de busqueda binaria



coef = [1 1 0]; % construir coeficientes polinomio  x^2 + x

coef1 = [1 4 0 -10]; % polinomio  x^3 + 4x^2 -10
x = 1:10;
func = polyval(coef1, x) ;  % entrega una arreglo de los coeficientes evaluados en los vlaores presentes en x

inferior = 1; superior = 2 ;  % intervalo
dato = 0;    % dato corresponde  al valor que se desea encontrar
bandera = 'F';

i = 0 ; 

while(inferior <= superior)
    mitad = (inferior + superior) / 2;
    
    if( polyval(coef1, mitad ) == dato)
        bandera = 'V';                % si la mitad coincide con el dato
        break   
    end
    
    if( polyval(coef1, mitad ) > dato) % se cambia la variable superior 
        superior = mitad;
        mitad = (inferior + superior) / 2;  
    end
    if( polyval(coef1, mitad ) < dato)
        inferior = mitad;
        mitad = (inferior + superior) / 2;  
    end
    
    i = i + 1 ;
end
if (bandera == 'V')
    fprintf(' %s es el valor x de solucion:  ,  en la iteracion : %8.3f  \n ' , mitad , i)
end



% https://www.mathworks.com/help/matlab/ref/fprintf.html
% https://www.mathworks.com/help/matlab/ref/polyval.html
% https://www.youtube.com/watch?v=pxh4QFzDh-Q