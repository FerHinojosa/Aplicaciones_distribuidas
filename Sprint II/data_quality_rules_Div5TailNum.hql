SELECT
    COUNT(CASE WHEN div5tailnum = '""' THEN 1 END) as cantidad_nulos,
    100 * COUNT(CASE WHEN div5tailnum = '""' THEN 1 END) / COUNT(*) AS porcentaje_nulos,
    COUNT(DISTINCT div5tailnum) AS cantidad_valores_unicos,
    max(div5tailnum) as valor_maximo,
    min(div5tailnum) as valor_minimo,
    AVG(div5tailnum) AS promedio,
    STDDEV_POP(div5tailnum) AS desviacion_estandar
from airline.flights;