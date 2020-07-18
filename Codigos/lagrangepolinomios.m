function [C]=interpolacionlagrange(x,y)

%entradas:x es un vector,y cualquier función
 


y=[y]

n1=length(x);
n=n1-1;
L=zeros(n1,n1);

for k=1:n+1
    V=1;
    for j=1:n+1
        if k~=j
            V=conv(V,poly(x(j)))/(x(k)-x(j)); 
        end
    end
    L(k,:)=V;
end

C=y*L;




% entrada 
%c es el resultado x y y son puntos  nodos almacenados en matriz c
% n1 tamaño del vector x o y
% n es el grado de polinomio
% l como matriz de ceros, para almacenar los coeficientes de lagrange
%v multiplica los factores por los coeficintes de lagranges
