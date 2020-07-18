clc
clear all
format short
% _Metodo de Newton_Julian N.
syms x y z
ao=input('ingrese aproximaciones iniciales');
funciones=input('ingrese las funciones'); % forma [f1;f2;f3];
tol=input('Ingrese la tolerancia')

jacob=jacobian(funciones)
i=1; imax=30; %iteracion maxima

f=inline(funciones);jf=inline(jacob);   % objeto fila/linea de la funcion
error= norm(f(ao(1),ao(2),ao(3)), 2); % norma/vector normal tipo 2  evluado en cada uno de los puntos ao(1)=primera aproximacion
%disp(error);                          % primer error 
while (error>= tol)
    fao=f(ao(1),ao(2),ao(3)); %nuevo jacobiano y funciones
    fjao= jf(ao(1),ao(2),ao(3));
  
    a1= ao- inv(fjao)*fao;    %nueva aproximacion aprox anterior- invjacob*fao
    fa1=f(a1(1),a1(2),a1(3)) ; %funcion evaluada en los nuevas aproximaciones
    
    error = norm(fa1,2);
    
    fprintf(' Iter %2d  raiz x=(%14.9f,%14.9f,%14.9f) f(x)=(%14.9f,%14.9f,%14.9f)\n',i,a1(1),a1(2),a1(3),fa1(1),fa1(2),fa1(3));
    
    if (i>imax)
        disp('Maximo numero de iteraciones realizadas');
        return;
    end
    
    ao=a1;
    i=i+1;  
    
end


% como ejemplo ao=[0;0;0] ;[3*x-cos(y*z)-0.5;4*x^2-625*y^2+2*y-1;exp(-x*y)+20*z-1+10*pi/3];

% expresiones para la inversa inv(A)  o %d= det(a);tr=transpose(a);invjaco=(1/d)*tr;
%
% el codigo esta predetemrinado para tres variables en cso de
% camibiarajustar syms y vectores que le necesiten ej: a0
