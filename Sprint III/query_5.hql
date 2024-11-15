SELECT originairportid, count(1) as cantidad 
    FROM airline.flights
    group by originairportid
    order by cantidad desc
    limit 10
