clc
clear all
format long
disp('-Integracion numerica- Julián Esteban Nieto Díaz-')
syms x

f(x)= input('Ingrese la funcion');h=0;





n=input('¿Con que cantidad de puntos va realizar la integracion?//seleccione 1 para integracion compuesta\n');

if(n==1)
    a=input('seleccione intervalo inferior\n');
    b=input('seleccione intervalo superior\n');
    inte=int(f(x),a,b);intreal=eval(inte);
    
    
    %x = linspace(a,b);
    %figure
    %subplot(2,1,1);
    %plot(x,f(x))
    %title('Funcion')
    %grid on
    
    %subplot(2,1,2)
    %area(f(x));
    %title('Area Bajo la curva')
    %grid on
    

    
    
    N=20;dx=(b-a)/N;%numero de intervalos definidos
    in=subs(f(x),a);
    for i=2:N
        a=a+dx;in=in+2*subs(f(x),a);
        
    end
    in=in+subs(f(x),a+dx);in=in*(dx/2);comp=eval(in);
    
    err= abs((intreal-comp)/(intreal));
    
    disp('valor real');disp(intreal);disp('Simpson compuesta');disp(comp);
    disp('error');disp(err);
    
    
end;

if (n==2)
    disp('Metodo del trapecio')
    xo=input('Ingrese xo \n');x1=input('Ingrese x1 \n');h=(x1-xo)/n;
    
    inte2=int(f(x),xo,x1);realinte2=eval(inte2);%disp(realinte2);
    intetrap=(h/2)*(f(xo)+f(xo+h));puntintetrap=eval(intetrap);%disp(puntintetrap);
    
    disp('Calculo de error')
    err= abs((realinte2-puntintetrap)/(realinte2));
    
    fprintf('h(%i) real(%f) trapecio(%f) error(%i)\n',h,realinte2,puntintetrap,err)
    
end 


if (n==3)
    disp('Simpson Tres Puntos')
    xo=input('Ingrese xo \n');x1=input('Ingrese x1 \n');x2=input('Ingrese x2 \n');h=(x2-xo)/n;
    
    inte3=int(f(x),xo,x2);realinte3=eval(inte3);%disp(realinte2);
    intes3=(h/3)*(f(xo)+4*f(x1)+f(x2)); puntintes3=eval(intes3);%disp(puntintetrap);
    
    disp('Calculo de error')
    err= abs((realinte3-puntintes3)/(realinte3));
    
    fprintf('h(%i) real(%f) trapecio(%f) error(%i)\n',h,realinte3,puntintes3,err)
    
end 

if (n==4)
    disp('Simpson 3/8')
    xo=input('Ingrese xo \n');x1=input('Ingrese x1 \n');x2=input('Ingrese x2 \n');x3=input('Ingrese x3 \n');;h=(x3-xo)/n;
    
    inte4=int(f(x),xo,x3);realinte4=eval(inte4);%disp(realinte2);
    intes4=(3*h/(8))*(f(xo)+3*f(x1)+3*f(x2)+f(x3)); puntintes4=eval(intes4);%disp(puntintetrap);
    
    disp('Calculo de error')
    err= abs((realinte4-puntintes4)/(realinte4));
    
    fprintf('h(%i) real(%f) simpson3/(%f) error(%i)\n',h,realinte4,puntintes4,err)
    
end 


