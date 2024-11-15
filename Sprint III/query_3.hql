select v.iata_code_reporting_airline,  AVG(v.arrdelayminutes) AS tiempo_promedio_demora
 FROM airline.flights v, (SELECT iata_code_reporting_airline ,
           COUNT(tail_number) AS total_vuelos
    FROM airline.flights
    GROUP BY iata_code_reporting_airline
    ORDER BY total_vuelos DESC
    LIMIT 5) t
 where v.iata_code_reporting_airline =t.iata_code_reporting_airline
 group by v.iata_code_reporting_airline
