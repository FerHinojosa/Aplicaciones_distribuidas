#!/bin/bash

# Archivo de salida
OUTPUT_FILE="extract_hdfs.txt"

# 1. Crear la ruta en HDFS
echo "Creando directorio /data en HDFS..." | tee -a $OUTPUT_FILE
hdfs dfs -mkdir -p /data | tee -a $OUTPUT_FILE

# 2. Subir el archivo de vuelos de marzo de 2024 a /data en HDFS
echo "Subiendo archivo de vuelos de marzo de 2024 a /data..." | tee -a $OUTPUT_FILE
hdfs dfs -put /data/2024_3.csv /data/ | tee -a $OUTPUT_FILE

# 3. Renombrar el archivo en HDFS a "2024_3.csv" (por si el nombre era diferente)
echo "Renombrando archivo en HDFS a 2024_3.csv..." | tee -a $OUTPUT_FILE
hdfs dfs -mv /data/nombre_original.csv /data/2024_3.csv | tee -a $OUTPUT_FILE

# 4. Contar los bloques y su tamaño para el archivo 2024_3.csv
echo "Contando bloques y tamaño de /data/2024_3.csv..." | tee -a $OUTPUT_FILE
hdfs fsck /data/2024_3.csv -files -blocks -locations | tee -a $OUTPUT_FILE

# 5. Mostrar los primeros 10 renglones del archivo
echo "Mostrando los primeros 10 renglones de /data/2024_3.csv..." | tee -a $OUTPUT_FILE
hdfs dfs -cat /data/2024_3.csv | head -n 10 | tee -a $OUTPUT_FILE

# 6. Listar el contenido de todos los directorios en el clúster
echo "Listando el contenido de todos los directorios en HDFS..." | tee -a $OUTPUT_FILE
hdfs dfs -ls -R / | tee -a $OUTPUT_FILE

# Confirmación de finalización
echo "Script ejecutado con éxito. Resultado guardado en $OUTPUT_FILE"
