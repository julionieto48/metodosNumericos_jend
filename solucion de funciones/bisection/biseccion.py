
import numpy as np
import matplotlib.pyplot as plt



def  f(x):
    return x ** 3 + 2 * x - 10

def biseccion( a, b, tolerancia) :

    xl = a                          # los limites van a variar
    xr = b

    posicionesMedio = [] ; itera = []
    i = 1
    while np.abs( xl - xr ) >= tolerancia :      # los intervalos se reducen en cada iteracion se opera de acuerdo a la tolerancia
        medio = (xl + xr) / 2.0                        # equivalente a "c"
        producto = f(xl) * f(medio)                    # este producto establece el criterio

        if producto > tolerancia :                # no hay una riz entre ambas evaluaciones se cambia el valor de la izda por el pt medio
            xl = medio
        elif producto < tolerancia :
            xr = medio

        posicionesMedio.append(medio)
        itera.append(i) ; i += 1

    return medio , itera , posicionesMedio

def graficar(inicio,parada, itera , posicion , rta):
    plt.subplot(1, 3, 1)
    x = np.linspace(inicio,parada,100)
    plt.plot(x,f(x))
    plt.xlabel(' x ');
    plt.ylabel(' f(x) ')
    plt.plot(rta, 0, 'ro')
    plt.title(' funcion')
    plt.grid(True)


    plt.subplot(1, 3, 2)
    plt.plot(itera, posicion)
    plt.ylabel(' valor medio ')
    plt.title(' i ')
    plt.title(' posiciones del valor medio')
    plt.grid(True)


    ax = plt.subplot(1, 3, 3)
    x = np.linspace(inicio, parada, 100)
    plt.plot(x, f(x))
    plt.xlabel(' x ');
    plt.ylabel(' f(x) ')


    x1 = np.linspace(-5, 5, len(posicion))
    ax.scatter(x1, posicion , c = "blue")

    for i, txt in enumerate(posicion):
        #x, y = posicion[i] , 0
        #plt.scatter( x , y  , c = "blue")

        plt.annotate(txt, (x1[i] , posicion[i]) )

    # plt.ylim((0, 2))
    plt.title('  ')
    plt.grid(True)

    plt.show()



rta ,a ,b = biseccion(1,3,1e-8)  ;
print "raiz en :" , rta
graficar(-5, 5, a, b, rta)




# https://www.tutorialexample.com/python-matplotlib-implement-a-scatter-plot-with-labels-a-completed-guide-matplotlib-tutorial/
# https://www.geeksforgeeks.org/enumerate-in-python/
# https://www.geeksforgeeks.org/matplotlib-pyplot-annotate-in-python/
# https://stackoverflow.com/questions/15943945/annotate-scatterplot-from-a-pandas-dataframe
# https://stackoverflow.com/questions/14432557/matplotlib-scatter-plot-with-different-text-at-each-data-point