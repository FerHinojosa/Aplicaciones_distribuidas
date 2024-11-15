SELECT
    COUNT(CASE WHEN arrdelayminutes IS NULL THEN 1 END) as cantidad_nulos,
    100 * COUNT(CASE WHEN arrdelayminutes IS NULL THEN 1 END) / COUNT(*) AS porcentaje_nulos,
    COUNT(DISTINCT arrdelayminutes) AS cantidad_valores_unicos,
    max(arrdelayminutes) as valor_maximo,
    min(arrdelayminutes) as valor_minimo,
    AVG(arrdelayminutes) AS promedio,
    STDDEV_POP(arrdelayminutes) AS desviacion_estandar
from airline.flights;