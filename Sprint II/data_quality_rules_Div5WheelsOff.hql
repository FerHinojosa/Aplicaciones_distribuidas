SELECT
    COUNT(CASE WHEN div5wheelsoff = '""' THEN 1 END) as cantidad_nulos,
    100 * COUNT(CASE WHEN div5wheelsoff = '""' THEN 1 END) / COUNT(*) AS porcentaje_nulos,
    COUNT(DISTINCT div5wheelsoff) AS cantidad_valores_unicos,
    max(div5wheelsoff) as valor_maximo,
    min(div5wheelsoff) as valor_minimo,
    AVG(div5wheelsoff) AS promedio,
    STDDEV_POP(div5wheelsoff) AS desviacion_estandar
from airline.flights;