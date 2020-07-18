%%Ecuaciones diferenciales metodo euler y taylor
clc 
clear all
disp('Solucion numerica para ecuaciones diferenciales');
syms y t


disp('solucion analitica')

y(t)=dsolve('Dy=1+y/t','y(1)=5','t');p=y([0:0.05:3]);y=eval(p);

figure
t=0:0.05:3;plot(t,y);xlabel('t');ylabel('y(t)');grid on;title('Solucion ecuacion diferencial')

%% Metodos numericos

clc 
clear all

disp('Metodos Numericos')

syms y t

opc=input('1)metodo euler 2)metodo taylor \n ');





if opc==1
    
    f(t,y)=1+y/t;t(1)=1;y(1)=2;
    n=input('Cabtidad de iteraciones \n');h=input('ingrese el paso h \n');
    for(i=1:n)
        t(i+1)=t(i)+h;
        a=t(i+1);ti=eval(a);
        
        y(i+1)=y(i)+h*f(t(i),y(i));
        c=y(i+1);yi=eval(c);
        
        fprintf('i(%i) t_i(%f) y_i(%f) \n ',i,ti,yi );
        
        
        scatter(ti,yi);hold on;grid on;title('metodo Euler');xlabel('t');ylabel('y(t)');
    end    
    

    
end   

if(opc==2)
    
    f(t,y)=1+y/t;df(t,y)=1/t;t(1)=1;y(1)=2;
    n=input('Cantidad de iteraciones \n');h=input('ingrese el paso h \n');
    
    for(i=1:n)
        t(i+1)=t(i)+h;a=t(i+1);
        ti=eval(a);
        
        y(i+1)=y(i)+h*f(t(i),y(i))+((h*h)/2)*(df(t(i),y(i)));
        c=y(i+1);
        yi=eval(c);
        
        fprintf('i(%i) t_i(%f) y_i(%f) \n',i,ti,yi)
        
        scatter(ti,yi);hold on;grid on;title('metodo Taylor');xlabel('t');ylabel('y(t)');
    end
    
    
end    

    
    
