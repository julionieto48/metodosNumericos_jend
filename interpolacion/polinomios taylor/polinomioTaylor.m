function taylor = polinomioTaylor(fx , ptoOrigen , orden )

% fx es la funcion
% pto de origen es el punto de analisis
% orden = es el n - esimo orden del polinomio
% polinomioTaylor(cos(x) , 0 , 4 )

syms x

f =  subs(fx , ptoOrigen) ; % evaluacion en primer punto
funciones = [] ; factorA = [] ;

for k = 1 : orden
    deriv = diff(fx) ; fx = deriv ; %funciones(k) = fx ;
    factorA(k) = subs(deriv , ptoOrigen) ; 
    orden = orden + 1 ;
end

factorA = horzcat(f,factorA) ;


taylor = 0 ;
for i = 1 : length(factorA)    
    pn = factorA(i)/ factorialRecursivo(i - 1)  * (( x - ptoOrigen )^( i - 1 )) ;  % i = k-1 pq matlab no arranca sus arreglos desde 0
    
    taylor = taylor  + pn ; 
end
taylor ;

figure ; fplot([taylor fx]) ; xlim([-2*pi 3*pi]) ; grid on ;
         legend('approximacion de sin(x) ','sin(x)') ; title('Series de Taylor');
         
         
end

