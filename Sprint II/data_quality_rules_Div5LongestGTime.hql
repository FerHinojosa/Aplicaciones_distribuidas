SELECT
    COUNT(CASE WHEN div5longestgtime = '' THEN 1 END) as cantidad_nulos,
    100 * COUNT(CASE WHEN div5longestgtime = '' THEN 1 END) / COUNT(*) AS porcentaje_nulos,
    COUNT(DISTINCT div5longestgtime) AS cantidad_valores_unicos,
    max(div5longestgtime) as valor_maximo,
    min(div5longestgtime) as valor_minimo,
    AVG(div5longestgtime) AS promedio,
    STDDEV_POP(div5longestgtime) AS desviacion_estandar
from airline.flights;