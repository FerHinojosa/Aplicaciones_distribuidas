SELECT
    COUNT(CASE WHEN reporting_airline IS NULL THEN 1 END) as cantidad_nulos,
    100 * COUNT(CASE WHEN reporting_airline IS NULL THEN 1 END) / COUNT(*) AS porcentaje_nulos,
    COUNT(DISTINCT reporting_airline) AS cantidad_valores_unicos
FROM airline.flights;  


SELECT reporting_airline AS categoria, COUNT(*) AS frecuencia
FROM airline.flights
GROUP BY reporting_airline
ORDER BY frecuencia DESC
LIMIT 5;