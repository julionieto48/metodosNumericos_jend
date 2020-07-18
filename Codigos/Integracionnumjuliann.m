clc
clear all
format long
disp('-Integracion numerica- Julián Esteban Nieto Díaz-')
syms x

f(x)= input('Ingrese la funcion');h=0;





n=input('¿Con que cantidad de puntos va realizar la integracion?')
if (n==2)
    disp('Metodo del trapecio')
    xo=input('Ingrese xo');x1=input('Ingrese x1');h=(x1-xo)/n;
    
    inte2=int(f(x),xo,x1);realinte2=eval(inte2);%disp(realinte2);
    intetrap=(h/2)*(f(xo)+f(xo+h));puntintetrap=eval(intetrap);%disp(puntintetrap);
    
    disp('Calculo de error')
    err= abs((realinte2-puntintetrap)/(realinte2));
    
    fprintf('h(%i) real(%f) trapecio(%f) error(%i)\n',h,realinte2,puntintetrap,err)
    
end 


if (n==3)
    disp('Simpson Tres Puntos')
    xo=input('Ingrese xo');x1=input('Ingrese x1');x2=input('Ingrese x2');h=(x2-xo)/n;
    
    inte3=int(f(x),xo,x2);realinte3=eval(inte3);%disp(realinte2);
    intes3=(h/3)*(f(xo)+4*f(x1)+f(x2)); puntintes3=eval(intes3);%disp(puntintetrap);
    
    disp('Calculo de error')
    err= abs((realinte3-puntintes3)/(realinte3));
    
    fprintf('h(%i) real(%f) trapecio(%f) error(%i)\n',h,realinte3,puntintes3,err)
    
end 

if (n==4)
    disp('Simpson 3/8')
    xo=input('Ingrese xo');x1=input('Ingrese x1');x2=input('Ingrese x2');x3=input('Ingrese x2');h=(x3-xo)/n;
    
    inte3=int(f(x),xo,x3);realinte3=eval(inte3);%disp(realinte2);
    intes3=(h/3)*(f(xo)+4*f(x1)+f(x2)); puntintes3=eval(intes3);%disp(puntintetrap);
    
    disp('Calculo de error')
    err= abs((realinte3-puntintes3)/(realinte3));
    
    fprintf('h(%i) real(%f) trapecio(%f) error(%i)\n',h,realinte3,puntintes3,err)
    
end 


