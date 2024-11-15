SELECT
    COUNT(CASE WHEN originairportid IS NULL THEN 1 END) as cantidad_nulos,
    100 * COUNT(CASE WHEN originairportid IS NULL THEN 1 END) / COUNT(*) AS porcentaje_nulos,
    COUNT(DISTINCT originairportid) AS cantidad_valores_unicos
FROM airline.flights;  


SELECT originairportid AS categoria, COUNT(*) AS frecuencia
FROM airline.flights
GROUP BY originairportid
ORDER BY frecuencia DESC
LIMIT 5;
