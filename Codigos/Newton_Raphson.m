%               M�todo de Newton-Raphson
%               Autor: Julio Echeverri
%               30/12/2013
function [X1] = Newton_Raphson()

syms x    %declaramos a X una variable simb�lica
Y=input('Ingrese la funci�n: ');  %se solicita la entrada de la funci�n



%graficamos la funci�n en un intervalo para poder tomar una buena
%estimaci�n de la ra�z
sup = input('Ingrese el limite superior para graficar: ');
in = input('Ingrese el limite inferior para la visualizaci�n: ');
t = linspace(in,sup,500);    %generamos un vector con los valores
plot(t,subs(Y,t))               %generamos la gr�fica
grid on


Xn=input('Ingrese el valor apr�ximado de la ra�z: ');    %se solicita la estimaci�n inicial
Ydx = diff(Y,x);   %derivamos la funcion Y con respecto a X y lo asignamos a la variable Ydx

%inicializar varibles
error = 1;
tolerancia = 0.000001;

    while error>=tolerancia    %condici�n de terminaci�n cuando el error sea menor a la tolerancia 
         
         X1 = Xn - (subs(Y,Xn)/subs(Ydx,Xn));  %formula de Newton-Raphson
         error = abs((X1-Xn)/X1);              %calculo del error
         Xn=X1;  %asignaci�n del nuevo valor de Xn para la siguiente iteraci�n
    
    end
end

