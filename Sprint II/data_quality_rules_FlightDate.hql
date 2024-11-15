SELECT
    COUNT(CASE WHEN flightdate IS NULL THEN 1 END) as cantidad_nulos,
    100 * COUNT(CASE WHEN flightdate IS NULL THEN 1 END) / COUNT(*) AS porcentaje_nulos,
    COUNT(DISTINCT flightdate) AS cantidad_valores_unicos,
    max(flightdate) as valor_maximo,
    min(flightdate) as valor_minimo
from airline.flights;