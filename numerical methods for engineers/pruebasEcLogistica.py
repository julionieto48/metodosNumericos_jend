# -*- coding: utf-8 -*-
"""Untitled2.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1sb_SPin_Wcbf-VpmuOqTQM6EKMS2WohI
"""

# Reg logistica pruebas

r = 2.6
x0 = 0.4
iteraciones = 14

xn = [x0]*iteraciones
xnuno = [0]*iteraciones

for i in range(0,iteraciones + 1): #0a 14
  ecLog = r* x0*(1-x0) 
  xnuno[i-1] = ecLog
  
  if i < iteraciones:
    x0 = xn[i]  # seactualiza el vlaor inicial
  



print(xnuno)
print(xn)


#solucionar casos de overflow

# Reg logistica pruebas

r = 2.6
x0 = 0.4
iteraciones = 14

xn = [x0]
xnuno = [0]*iteraciones

for i in range(0,iteraciones + 1): #0a 14
  ecLog = r* x0*(1-x0) 
  xnuno[i-1] = ecLog
  
  if i < iteraciones:
    xn[i-1] = xnuno[i-1] 
  



print(xnuno)

# Reg logistica pruebas

r = 2.6
x0 = 0.4
iteraciones = 14

xn = [x0]* (iteraciones + 1)
xnuno = [0]*iteraciones

print(xn)
for i in range(0,iteraciones + 1): #0a 14
  ecLog = r* x0*(1-x0) 
  xnuno[i-1] = ecLog
  
  if i < iteraciones:
    x0 = xn[i]  # se anade al arreglo de iteraciones
  
  ecLog = x0
  



print(xnuno)
print(xn)