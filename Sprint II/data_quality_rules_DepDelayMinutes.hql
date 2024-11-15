SELECT
    COUNT(CASE WHEN depdelayminutes IS NULL THEN 1 END) as cantidad_nulos,
    100 * COUNT(CASE WHEN depdelayminutes IS NULL THEN 1 END) / COUNT(*) AS porcentaje_nulos,
    COUNT(DISTINCT depdelayminutes) AS cantidad_valores_unicos,
    max(depdelayminutes) as valor_maximo,
    min(depdelayminutes) as valor_minimo,
    AVG(depdelayminutes) AS promedio,
    STDDEV_POP(depdelayminutes) AS desviacion_estandar
from airline.flights;