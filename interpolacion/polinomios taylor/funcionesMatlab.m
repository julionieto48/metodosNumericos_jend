clc , clear all , close all ;
%%
% *Funciones matlab*

syms x
% x = 2 ;
% y = x ^ 2 ;
% 
% x = 3 ;
% y = subs(y) ; 
%%

f = x ^2 - 1 
subs(f,3)  ; % equivalente a f(3)
derivada = diff(f) ; subs(derivada, 3)

figure ; ezplot(f , [-15 15]) ; grid on ; hold on ;
         ezplot(derivada , [-15 15]) ;

%%
% funciones anonimas
% 
% Anonymous functions are function 'objects'. They are stored in a variable
% and contain knowledge about the local variables at the time of creation (form a clusore).
% They work like a normal variable and can be overwritten, manipulated etc. 
% They are an essential feature of functional 
% programming and are not specifically intended as an optimalization.
