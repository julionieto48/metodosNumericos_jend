
import sympy
from sympy import Derivative, diff, simplify
import math
import matplotlib.pyplot as plt
import numpy as np
import math

sympy.init_printing()              # definicion simbolica
x,y = sympy.symbols('x,y')



def polinomioTaylor(fx , ptoOrigen ,orden):


    f = fx.subs(x , ptoOrigen)
    factorA = [] # para saber que es factor a ver la expresion de los polinomios

    for k in range(1, orden , 1):
        deriv = simplify( Derivative(fx, x).doit() )  # diff(fx,x)
        fx = deriv

        factorA[k] = deriv.subs(x , ptoOrigen)
          #orden += 1

    factorA = factorA.hstack( f , factorA) # horzcat

    pn = sympy.poly(0)
    taylor = sympy.poly(0)

    for i in range(1 , len(factorA) , 1 ):
        pn = factorA[i]  / math.factorial(i - 1)  * (( x - ptoOrigen )**( i - 1 ))   # hacer mi funcion factorial#
        taylor = pn + taylor

    return (taylor)
expr1 =  sympy.cos(x)
polinomioTaylor( expr1 , 0 , 4)

# https://pythonforundergradengineers.com/sympy-expressions-and-equations.html
# https://docs.sympy.org/latest/tutorial/basic_operations.html
# https://relopezbriega.github.io/blog/2015/12/02/introduccion-al-calculo-con-python/
# https://www.geeksforgeeks.org/numpy-hstack-in-python/
# https://micro.recursospython.com/recursos/como-elevar-un-numero-a-una-potencia.html
# http://blog.espol.edu.ec/matg1013/1-4-taylor-polinomio-ejercicio01/
# https://github.com/algoritmosmathpy/algoritmos-python/blob/master/Operaciones%20entre%20dos%20Polinomios.py