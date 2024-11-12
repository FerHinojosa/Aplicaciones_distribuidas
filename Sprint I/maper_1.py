#!/usr/bin/python3
import sys

days = []
line_count = 0

for line in sys.stdin:
    line = line.strip()
    data = line.split(",")
    
    # Intenta procesar cada línea
    try:
        # Omite la cabecera
        if line_count != 0:
            # Intenta acceder a la columna 3, manejando posibles errores de índice
            print(data[3], "\t1")
    except IndexError:
        print(f"Error: La línea {line_count + 1} no tiene suficientes columnas.")
    except Exception as e:
        print(f"Error en la línea {line_count + 1}: {e}")
    
    line_count += 1
