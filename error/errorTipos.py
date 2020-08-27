import matplotlib.pyplot as plt


# error absoluto
# diferencia entre valor de lo medido y el otado como exacto

valoresMedidos = [10.57,10.58,10.54,10.53,10.59,10.57]
valorereal = 5

def errorAbsoluto(medido):
    N = len(medido)
    sum = round(float(0), 20 )
    for i in range(len(medido)):
        sum= round(float(medido[i] + sum) , 20)
    promMedido = sum / N

    sumelement = 0 ; sumDesviElement = 0
    for j in range(len(medido)):
        element = absoluto(medido[j] - promMedido)
        sumelement = sumelement + element

        # desviacion media o incertidumbre absoluta
        desviElement =  element ** 2
        sumDesviElement += desviElement
    s = ( sumDesviElement / (N - 1) ) ** (0.5) # separacion de valor promedio entre las mediciones

    e = sumelement / N



    print  " el error absoluto es : " , e
    print  " la desviacion media  es : ", s
    print " con un valor aceptado de :" , promMedido + s , " y " , promMedido - s
    return e , s

def ploting(medido):
    n = len(medido)
    y = [2] * n

    print y , medido

    plt.figure()
    ax = plt.subplot(111)
    ax.scatter(medido, y , label= ' mediciones ')


    plt.xlabel(' mediciones ')
    plt.title(' calculo de errores ')
    plt.grid(True)
    ax.set_ylim(0, 4)

    chartBox = ax.get_position()
    ax.set_position([chartBox.x0, chartBox.y0, chartBox.width * 0.9, chartBox.height])
    ax.legend(loc='upper center', bbox_to_anchor=(1.45, 0.8), shadow=True, ncol=1)

    for i in range(len(medido)):
        ax.annotate(medido[i] , (medido[i], y[i] ))



    plt.show()

# def errorAbsolutoA(medido , real):
#     N = len(medido)
#     sum = round(float(0), 20 )
#     for i in range(len(medido)):
#         sum= round(float(medido[i] + sum) , 20)
#     promMedido = sum / N
#
#     absErr = real - promMedido
#     print  absErr
#     return absErr

def absoluto(num):

    if num >= 0 :
        return num
    else :
        return - num


error, desviacion = errorAbsoluto(valoresMedidos)
ploting(valoresMedidos)



# https://en.wikipedia.org/wiki/Mean_absolute_percentage_error

# https://www.youtube.com/watch?v=g5dSFQQ3I68
# https://es.wikipedia.org/wiki/Error_absoluto_medio
# https://es.stackoverflow.com/questions/139591/etiquetas-en-gr%C3%A1ficos-con-matplotlib
# https://www.geeksforgeeks.org/matplotlib-axes-axes-annotate-in-python/
# https://www.geeksforgeeks.org/enumerate-in-python/
# https://www.geeksforgeeks.org/matplotlib-axes-axes-annotate-in-python/
# http://creative-punch.net/2014/01/creating-nested-array-items-parent-ids/

