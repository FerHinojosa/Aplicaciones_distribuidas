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


with open('query_5.hql', 'r') as archivo_sql:
    query = archivo_sql.read()

data = pd.read_sql(query, conn)
sns.catplot(
            x="originairportid",
            y="cantidad",
            data=data)
plt.show()
