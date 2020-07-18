
def divisores( numero ):

    counter = 0
    divisores = []

    for entero in range( 1 , numero + 1) :
        if numero % entero == 0 :     # si la division es exacta osea residuo es cero
            counter  += 1             # contador de cantidad de divisores
            divisores.append(entero)
    if counter == 2 :
        print ( " es primo ")

    print ( "cantidad de divisores : " , counter )
    print (divisores)

divisores( 15 )

# __________________________________________________
print ("  __________________________________________")

def divisoresDos( numero ):

    counter = 0
    divisores = [] ; cocientes = []

    for entero in range( 1 , numero + 1) :
        if numero % entero == 0 :     # cumplir con el criterio de divisibilidad
            counter  += 1
            divisores.append(entero)

            cocienteI = numero / entero            #  cociente  = dividendo / divisor
            cocientes.append(cocienteI)


    print ( "cantidad de divisores : " , counter )
    print (divisores)
    print (cocientes)

divisoresDos( 100 )