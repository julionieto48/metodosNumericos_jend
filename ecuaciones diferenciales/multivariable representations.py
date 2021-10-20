# -*- coding: utf-8 -*-
"""Untitled16.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1-eik1r4JONbIxxwZZ2fHpYgEUXYBYUgX
"""

#plot multivariable 

import numpy as np
from pylab import meshgrid,cm,imshow,contour,clabel,colorbar,axis,title,show

#funcion 
def funcion(x,y):
 return ((x**2+y))+ np.sin(y)


  
x = np.arange(-3.0,3.0,0.1)  # generate linspace from -3 to 3 equally spaced 
y = np.arange(-3.0,3.0,0.1)

X,Y = meshgrid(x, y) # grilla d epuntos
Z = funcion(X,Y)     # evaluar la funcion


#plot the graph - contour lines
im = imshow(Z,cmap=cm.RdBu) # drawing the function

cset = contour(Z,np.arange(-1,1.5,0.2),linewidths=2,cmap=cm.Set2) #linea de ocntornos
clabel(cset,inline=True,fmt='%1.1f',fontsize=10)                  #labels
colorbar(im)                                                      # barra d ecolores

title('$z=(x^2+y)+ sin(y)$')                        #latex
show()

#_______________________________________________________________________________

from mpl_toolkits.mplot3d import Axes3D
from matplotlib import cm
from matplotlib.ticker import LinearLocator, FormatStrFormatter
import matplotlib.pyplot as plt

fig = plt.figure()
ax = fig.gca(projection='3d')
surf = ax.plot_surface(X, Y, Z, rstride=1, cstride=1, 
                      cmap=cm.RdBu,linewidth=0, antialiased=False)

ax.zaxis.set_major_locator(LinearLocator(10))
ax.zaxis.set_major_formatter(FormatStrFormatter('%.02f'))
plt.xlabel('x'), plt.xlabel('y'), plt.xlabel('z') 

fig.colorbar(surf, shrink=0.5, aspect=5)


#plt.hold(True)

# anadir plano constante 
punto = np.array([0,0,0])
normal = np.array([0,5,0])
# a plane is a*x+b*y+c*z+d=0
# [a,b,c] is the normal. Thus, we have to calculate d and we're set

d = -punto.dot(normal)
xx, yy = np.meshgrid(range(10), range(10)) #grilla z x
z = (-normal[0] * xx - normal[1] * yy - d) * 1. / normal[2]
plt3d.plot_surface(xx, yy, z)

plt.show()


# https://www.kaggle.com/residentmario/multivariate-plotting 
#https://pundit.pratt.duke.edu/wiki/Python:Plotting_Surfaces

#plot multivariable 

import numpy as np
from pylab import meshgrid,cm,imshow,contour,clabel,colorbar,axis,title,show

#funcion 
def funcion(x,y):
 return ((x**2+y))+ np.sin(y)


  
x = np.arange(-3.0,3.0,0.1)  # generate linspace from -3 to 3 equally spaced 
y = np.arange(-3.0,3.0,0.1)

X,Y = meshgrid(x, y) # grilla d epuntos
Z = funcion(X,Y)     # evaluar la funcion


#plot the graph - contour lines
im = imshow(Z,cmap=cm.RdBu) # drawing the function

cset = contour(Z,np.arange(-1,1.5,0.2),linewidths=2,cmap=cm.Set2) #linea de ocntornos
clabel(cset,inline=True,fmt='%1.1f',fontsize=10)                  #labels
colorbar(im)                                                      # barra d ecolores

title('$z=(x^2+y)+ sin(y)$')                        #latex
show()

#_______________________________________________________________________________

from mpl_toolkits.mplot3d import Axes3D
from matplotlib import cm
from matplotlib.ticker import LinearLocator, FormatStrFormatter
import matplotlib.pyplot as plt

fig = plt.figure()
ax = fig.gca(projection='3d')
surf = ax.plot_surface(X, Y, Z, rstride=1, cstride=1, 
                      cmap=cm.RdBu,linewidth=0, antialiased=False)

ax.zaxis.set_major_locator(LinearLocator(10))
ax.zaxis.set_major_formatter(FormatStrFormatter('%.02f'))
plt.xlabel('x'), plt.xlabel('y'), plt.xlabel('z') 

fig.colorbar(surf, shrink=0.5, aspect=5)


#plt.hold(True)

# anadir plano constante 
punto = np.array([0,0,0])
normal = np.array([0,5,0])
# a plane is a*x+b*y+c*z+d=0
# [a,b,c] is the normal. Thus, we have to calculate d and we're set

ptoEvaluacionY = 1
xx,yy = np.meshgrid(range(10), range(10))
zz = ((5*yy)- ptoEvaluacionY) 

ax.plot_surface(xx, yy, zz)



plt.show()

import matplotlib.pyplot as plt
import numpy as np

k = 1

def f(x):
    return ((1/k) - (x**2) )**(1/2)

x = np.arange(-5.0, 5.0, 0.1)
plt.figure(1)
plt.subplot(211)
plt.plot(x, f(x), 'bo')
plt.grid()

# iterar k 
import matplotlib.pyplot as plt
import numpy as np

k = 1
iteraciones = 10

def f(x):
    return ((1/k) - (x**2) )**(1/2)
x = np.arange(-5.0, 5.0, 0.1)
plt.figure(1)

while k < iteraciones:
  
  plt.plot(x, f(x))
  
  k = k + 1

plt.xlim(-1,1) ; plt.ylim(-2,2)
plt.grid()

import matplotlib.pyplot as plt
plt.style.use('seaborn-white')
import numpy as np

def f(x, y):
    return 1 / ((x**2)+(y**2))
  
x = np.linspace(-5, 5, 50)
y = np.linspace(-5, 5, 40)

X, Y = np.meshgrid(x, y)
Z = f(X, Y)

plt.contour(X, Y, Z, 20, cmap='RdGy')
plt.grid()

plt.xlim(-1,1) ; plt.ylim(-2,2)

# https://jakevdp.github.io/PythonDataScienceHandbook/04.04-density-and-contour-plots.html

import matplotlib.pyplot as plt

import numpy as np

def f(x, y):
    return x*y
  
x = np.linspace(-10, 10, 50)
y = np.linspace(-5, 5, 50)

X, Y = np.meshgrid(x, y)
Z = f(X, Y)



plt.contour(X, Y, Z, 20, cmap='RdGy')
plt.quiver(X,Y)
plt.grid()
plt.xlim(-10,10) ; plt.ylim(-2,2)