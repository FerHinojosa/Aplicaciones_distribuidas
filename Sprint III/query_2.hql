SELECT iata_code_reporting_airline as iata,
       COUNT(tail_number) AS total_vuelos,
       SUM(CASE WHEN arrdelayminutes = 0 THEN 1 ELSE 0 END) AS vuelos_a_tiempo,
       (SUM(CASE WHEN arrdelayminutes = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(tail_number)) AS porcentaje_efectividad
FROM airline.flights
GROUP BY iata_code_reporting_airline
ORDER BY porcentaje_efectividad DESC
LIMIT 10
