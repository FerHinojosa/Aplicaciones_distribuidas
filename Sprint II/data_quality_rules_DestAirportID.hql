SELECT
    COUNT(CASE WHEN destairportid IS NULL THEN 1 END) as cantidad_nulos,
    100 * COUNT(CASE WHEN destairportid IS NULL THEN 1 END) / COUNT(*) AS porcentaje_nulos,
    COUNT(DISTINCT destairportid) AS cantidad_valores_unicos
from airline.flights;  


SELECT destairportid AS categoria, COUNT(*) AS frecuencia
FROM airline.flights
GROUP BY destairportid
ORDER BY frecuencia DESC
LIMIT 5;