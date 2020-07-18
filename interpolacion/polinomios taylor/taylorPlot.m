function taylorPlot(func , a , izda , dcha , n)

% funcion de forma inline = f
% punto central = a
% limite izdo = izda
% limite derecho = dcha
% orden del polinomio n

syms x ;
p = vectorize(  taylor(func(x) , n+1 , a )  )  ;
x = linspace(izda , dcha , 100)                ;
func = f(x)                                    ;
p = eval(p)                                    ;
plot(x , func , x , p , 'r'    )               ;


end

