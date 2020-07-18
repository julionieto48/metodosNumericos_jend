clc , clear all , close all ;
%%
% *Sumas Parciales*
numero = 10 ; suma = 0 ;
for(i = 1 : numero)
    suma = suma + i ;  
end
suma

%%

% para la suma infinita se define la n-esima suma parcial como
% 
%  s_n =  k=1-> inf suma (a_k)

%%
%  sea la suma parcial:
%   
%        suma(  1 / k^(3/2)  )        con k=1-> inf
       
k = 1 : 10 ; s = sum( 1./k.^(3/2)   )
s = 0 ;
for(i = 1 : 10)
    s = s + 1/ (i^(3/2)) ;  
end
s

% Serie armonica 
%   
%        suma(  1 / k  ) = 1 + 1/2 + 1/3 +...        con k=1-> inf

k = 1 : 10 ; sA = sum( 1./k   )
sA = 0 ;
for(i = 1 : 10)
    sA = sA + 1/(i) ;  
end
sA

%%

numero = 5 ; i = 1 ; suma = 0 ; 
while (i < numero)
    suma = suma + i ;
    i = i + 1 ;
end
suma
%%
% _referencias_
% https://www.programiz.com/c-programming/examples/sum-natural-numbers