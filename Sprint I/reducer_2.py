#!/usr/bin/python3
import sys

# Inicializamos el diccionario
origenes = {}

for linea in sys.stdin:
    # Quitamos espacios en blanco extra
    linea = linea.strip()
    # Parseamos la entrada de mapper.py
    try:
        origen_id, cuenta = linea.split('\t', 1)
        # Convertimos cuenta de string a int
        cuenta = int(cuenta)
    except ValueError:
        # Si cuenta no es un número o la línea tiene un formato incorrecto, la omitimos
        continue

    # Agregamos los conteos por origen_id
    try:
        origenes[origen_id] += cuenta
    except KeyError:
        origenes[origen_id] = cuenta

# Imprimimos los resultados
for origen_id in origenes.keys():
    print(origen_id.strip(), ",", origenes[origen_id])
