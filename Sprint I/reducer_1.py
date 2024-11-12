#!/usr/bin/python3
import sys

# Inicializamos el diccionario
days = {}

for line in sys.stdin:
    # Quitamos espacios en blanco extra
    line = line.strip()
    
    # Parseamos la entrada de mapper.py
    try:
        day, count = line.split('\t', 1)
        # Convertimos count de string a int
        count = int(count)
    except ValueError:
        # Si count no es un número o la línea tiene un formato incorrecto, la omitimos
        continue

    # Agregamos los conteos por día
    try:
        days[day] += count
    except KeyError:
        days[day] = count

# Imprimimos los resultados
for day in days.keys():
    print(day.strip(), ",", days[day])
