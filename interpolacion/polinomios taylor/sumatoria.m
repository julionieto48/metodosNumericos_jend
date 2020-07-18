function [numero] = sumatoria(numero)
% sumatoria de los numeros hasta el num ingresado
numeroInicial  = numero ;
if (numero ~= 0)
    numero = numero + sumatoria(numero - 1);   
end
fprintf(' Sumatoria de los numeros hasta  %4.2f  es %4.2f  ', numeroInicial , numero);

end

% https://www.programiz.com/c-programming/examples/natural-number-sum-recursion