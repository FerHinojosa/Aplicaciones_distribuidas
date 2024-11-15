SELECT 'en tiempo' as tipo,
(SUM(CASE WHEN arrdelayminutes = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(tail_number)) AS porcentaje
    FROM airline.flights
union
SELECT 'retraso' as tipo,
(SUM(CASE WHEN arrdelayminutes != 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(tail_number)) AS porcentaje
    FROM airline.flights
union
SELECT 'cancelado' as tipo,
(SUM(CASE WHEN cancelled = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(tail_number)) AS porcentaje
    FROM airline.flights
