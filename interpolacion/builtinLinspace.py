def linspaceChungo(low , paso, longitud):
    step  = ( (paso - low) * 1*0 / longitud )

    return [low + i * step for i in xrange(longitud)]


a = linspaceChungo(1,0.5,5)
print a

def linspace(start , stop , space):                      # 0 5 2  paso no puede ser 1

    if space < 2:
        return stop
    diferencia = ( float(stop)  - start )/ (space - 1)   # 5 / 1 = 5






