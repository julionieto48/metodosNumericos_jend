clc , clear all , close all ;
%%
% syms x
% fx = cos(x) ;
% ptoOrigen = 0 ;
% orden = 4  ;
% 
% f =  subs(fx , ptoOrigen) ;
% 
% funciones = [] ; factorA = [] ;
% 
% 
% for k = 1 : orden
%     deriv = diff(fx) ; fx = deriv ; %funciones(k) = fx ;
%     factorA(k) = subs(deriv , ptoOrigen) ; 
%     orden = orden + 1 ;
% end
% 
% factorA = horzcat(f,factorA) 
% 
% monomios = [];
% taylor = 0 ;
% for i = 1 : orden + 1    % 1 2 3 4 5
%     pn = factorA(i)/ factorialRecursivo(i - 1)  * ((x - ptoOrigen )^( i - 1)) ;  % i = k-1 pq matlab no arranca sus arreglos desde 0
%     %monomios(i) = pn;
%     
%     taylor = taylor  + pn ; 
% end


%%
syms x
fx = cos(x) ;
ptoOrigen = 0 ;
orden = 100  ;

f =  subs(fx , ptoOrigen) ; % evaluacion en primer punto

funciones = [] ; factorA = [] ;


for k = 1 : orden
    deriv = diff(fx) ; fx = deriv ; %funciones(k) = fx ;
    factorA(k) = subs(deriv , ptoOrigen) ; 
    orden = orden + 1 ;
end

factorA = horzcat(f,factorA)


taylor = 0 ;
for i = 1 : length(factorA)    % 1 2 3 4 
    pn = factorA(i)/ factorialRecursivo(i - 1)  * (( x - ptoOrigen )^( i - 1 )) ;  % i = k-1 pq matlab no arranca sus arreglos desde 0
    
    taylor = taylor  + pn ; 
end
taylor ;

figure ; fplot([taylor fx]) ; xlim([-2*pi 3*pi]) ; grid on ;
         legend('approximacion de funcion ','funcion') ; title('Series de Taylor');





