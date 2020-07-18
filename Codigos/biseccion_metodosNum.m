clc
clear all
syms x y
% metodo de biseccion

fun= input('Ingrese la funcion');
f= inline(fun);%convierto a string
a= input('ingrese valor de un extremo');
b= input('ingrese valor de el otro  extremo');
tol=input('ingrese valor de tolerancia');

n=10; %numero de iteraciones step 1
i= 0;
%step 2
while i <= n
          
    p= (a+b)/(2); %punto medio step 3    
    fa= feval (f,a); % evaluar la funcion en a
    fp= feval (f,b); %evaluar la funcion en p
    
    %step4
    if (fp== 0) 
        %i toma el valor de las iteraciones
        i=10; 
        fprintf('punto de corte es :' )
        disp(p)
        
    end    
    % enontrando la respuesta evaluando la tolerancia
    if ((b-a)/2)>tol
        fprintf('punto de corte es :' )
        disp(p)
        
    end    
    i= i+1;
    % step 6
    lim=fa*fp;
    
    if(lim<0)
        b = p;
    end    
    
    if (lim>0)
        a = p;
     
    
    end
  
    
   
    T(i,:)= [i a b p fa fp ];
    
    %disp (T)
    

    
    
end
disp ('iteracion , liminf,limsup,punto medio,fa,fp');
T
fprintf('punto de corte es :' )
disp(p)
ezplot(f)
grid on
hold on
scatter(p,0)



