import pandas as pd
from pyhive import hive
import matplotlib.pyplot as plt
import seaborn as sns
HOST = '127.0.0.1'  
PORT = '10000'  

conn = hive.Connection(
    host=HOST,
    port=PORT
    )


with open('query_4.hql', 'r') as archivo_sql:
    query = archivo_sql.read()

data = pd.read_sql(query, conn)

print(data["_u2.tipo"])


categorias = data["_u2.tipo"]
valores = data["_u2.porcentaje"]

sns.set(style="whitegrid")

plt.figure(figsize=(7, 7))
plt.pie(
    valores,
    labels=categorias,
    autopct='%1.1f%%',
    startangle=90,
    colors=sns.color_palette("pastel")
    )

# Asegurarse de que el gráfico sea circular
plt.axis('equal')

# Mostrar gráfico
plt.title("Gráfico de Performance", fontsize=16)
plt.show()
