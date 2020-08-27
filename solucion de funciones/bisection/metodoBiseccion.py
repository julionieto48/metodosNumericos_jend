import numpy as np
import matplotlib.pyplot as plt



coef  = [1,4,0,-10]  ; p1 = np.poly1d(coef)

x = []
for i in range (1,11):
    x.append(i)

funcion =  p1(x)               # evaluacion del polinomio
# _________________ / / _________________________________

inferior = 1  ; superior = 2   # intervalo de evaluacion
inferior = float(inferior) ; superior = float(superior)
dato = 0                       # dato a buscar
bandera = False

i = 0

def printf(format, *values):
    print(format % values )

while inferior <= superior :
    mitad = float(( inferior + superior ) / 2 )

    if p1(mitad) == dato :
        bandera = True
        break

    if p1(mitad)  > dato :
        superior = mitad
        mitad = float (inferior + superior) / 2

    if p1(mitad)  < dato :
        inferior = mitad
        mitad = float (inferior + superior) / 2   # al implementarlo se realiza la operacion con menos numero de iteraciones

    i += 1

if bandera == True:
    # print( "valor x de solucion: %d  , en la iteracion :  %d" % (mitad,i))
    printf("valor x de solucion: %f  , en la iteracion :  %d", float (mitad) , i)



plt.figure(1)
plt.subplot(111)
plt.plot(x, funcion, label=' funcion ');
#plt.plot(float(mitad) , 'ro', label='punto final')

plt.xlabel(' x ') ; plt.ylabel(' f(x) ')
plt.title(' metodo biseccion ')
plt.grid(True)

plt._show()

# iteracion vs puntos de proceso

# https://www.geeksforgeeks.org/numpy-polyval-in-python/
# https://stackoverflow.com/questions/37352098/plotting-a-polynomial-using-matplotlib-and-coeffiecients