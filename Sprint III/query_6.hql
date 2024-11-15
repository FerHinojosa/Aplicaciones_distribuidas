SELECT CONCAT(origincityname ,destcityname) as  ruta , sum(arrdelayminutes) as tiempo_retraso 
    FROM airline.flights
    group by CONCAT(origincityname ,destcityname)
    HAVING tiempo_retraso >0
    order by tiempo_retraso desc
    limit 10
