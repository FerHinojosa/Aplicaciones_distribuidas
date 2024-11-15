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


with open('query_3.hql', 'r') as archivo_sql:
    query = archivo_sql.read()

data = pd.read_sql(query, conn)

sns.catplot(
            x="v.iata_code_reporting_airline",
            y="tiempo_promedio_demora",
            data=data)
plt.show()
