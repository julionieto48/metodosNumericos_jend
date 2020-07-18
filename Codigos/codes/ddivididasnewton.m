function [C,D] = ddivididasnewton(X,Y)
format short

n = length(X);
D = zeros(n,n);
D(:,1) = Y';

a= input('Por que metodo lo desea 1.progresivas 2. regresivas')

if(a==1)
    for(j=2:n)
        for k=j:n,
            D(k,j) = (D(k,j-1)-D(k-1,j-1))/(X(k)-X(k-j+1))
        end
    end
elseif(a==2)
    for(n=2:j)
        for k=j:n,
            D(k,j) = (D(k,j-1)-D(k-1,j-1))/(X(k)-X(k-j+1))
        end
    end
end
C = D(n,n);
for k=(n-1):-1:1,
  C = conv(C,poly(X(k)));
end

    
    

