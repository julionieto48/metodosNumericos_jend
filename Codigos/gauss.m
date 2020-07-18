function y= gauss(a,b)
[n n]=size(a);
a=[a';b']'; %matriz aumentada
x=zeros(n,1); %resultados de las soluciones
for (p=1:n)
    
    for k=[1:p-1,p+1:n];
    m=-a(k,p)/a(p,p);
    a(k,:)=a(k,:)+m*a(p,:)
    end
    
end
x=a(:,n+1)./diag(a)
%A=[a b c d; -a -b c d] B=[1; 2; 3 ]
