
function [p]=polilagrange(x,y)
format short
%input= x=puntos, y=untos o funcion polilagrange([a b c],y)
l=length(x);%tamaño del vector de entrada
grado=l-1; %cantidad de nodos -1 
Lagr=zeros(l,l);%matrizdeceros que almacena los multiplicadores/coeficientes lagrange
for (k=1:grado+1)
    v=1;%para metro de ayuda para el Ln,k(x)
    for (j=1:grado+1)
        %k y j corren desde el mismo valor solo que k y j son diferentes en
        %el denominador
        if (k~=j)
            v=conv(v,poly(x(j)))/ (x(k)-x(j)) ;  %conv multiplica polnomio poly=polinomio
    
        end
    end 
    % se actualiza la matriz de zeros
    Lagr(k,:)=v
    
end
p=y*Lagr