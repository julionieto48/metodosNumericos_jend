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

tolerancia = 0.001 ; error = 0 ;

errorActual = dato  ; ultimoError = dato ;  % solo las inicializo con referencia a cero osea el dato

i = 0 ; 

if(inferior < superior)
        while (error > tolerancia)
        mitad = (inferior + superior) / 2;
        
        fP = polyval(coef1, inferior) 
        fP = ultimoError 
        
        criterio = polyval(coef1, inferior) *  polyval(coef1, superior)
        if( criterio > dato) %  dato = 0  si la multiplicacion es positiva se cambia limite infeior
            inferior = mitad;
            mitad = (inferior + superior) / 2;  
        end
        
        if( criterio < dato)
            superior = mitad;
            mitad = (inferior + superior) / 2;  
        end
        
       
        i = i + 1 ;  error = abs(errorActual - ultimoError ) ;
        
        errorActual = ultimoError 
    
        end

    
end
    
       

if (bandera == 'V')
    fprintf(' %s es el valor x de solucion:  ,  en la iteracion : %8.3f  \n ' , mitad , i)
end

% https://www.arduino.cc/en/Tutorial/StateChangeDetection
