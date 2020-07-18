function t = polinomioTaylorError(funcion ,ptoOrigen , errorDeseado , rango)

% funcion = cos(x) ; ptoOrigen = 0 ; errorDeseado = 0.001 ; rango = [-2*pi 3*pi] ;
% polinomioTaylorError(cos(x) ,0 , 0.001, [-2*pi 3*pi])
orden = 0  ; 
maximo = max(rango); 

t = polinomioTaylor(funcion , ptoOrigen , 0) ;   % se calcula el polinomio de orden cero

errorCalculado = abs(  subs( funcion , maximo )   - subs ( t , maximo )  ) ;

while (errorCalculado > errorDeseado)
    orden = orden + 1 ;
    t = polinomioTaylor(funcion , ptoOrigen , orden) ; 
end
t

figure ; fplot([funcion  t ]) ; xlim(rango) ; grid on ;
         legend('approximacion de funcion ','funcion') ; title('Series de Taylor');
end

