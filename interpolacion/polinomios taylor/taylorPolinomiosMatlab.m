clc , clear all , close all ;
syms x ;
%%
% *Polinomio de Taylor* 


% polinomio de taylor de funcion seno
func =  inline( 'sin(x)'  )
taylor(func(x) ,x, 'Order', 8 )  
% taylorPlot(func , 0 , 0 , pi , 8) ;


f = sin(x) ;
taylorUno = taylor(f, x, 'Order', 8)

figure ; fplot([taylorUno f]) ; xlim([-pi 3*pi]) ; grid on ;
         legend('approximacion de sin(x) ','sin(x)') ; title('Series de Taylor');


%%
% taylor con error
syms x 

funcion = cos(x) ; ptoOrigen = 0 ;
orden = 0  ; % el orden no se ingresa

errorDeseado = 0.001 ; rango = [-2*pi 3*pi] ; maximo = max(rango); 

t = polinomioTaylor(funcion , ptoOrigen , 0) ;   % se calcula el polinomio de orden cero

errorCalculado = abs(  subs( funcion , maximo )   - subs ( t , maximo )  ) ;

while (errorCalculado > errorDeseado)
    orden = orden + 1 ;
    t = polinomioTaylor(funcion , ptoOrigen , orden) ; 
end

figure ; fplot([funcion  t ]) ; xlim(rango) ; grid on ;
         legend('approximacion de funcion ','funcion') ; title('Series de Taylor');

