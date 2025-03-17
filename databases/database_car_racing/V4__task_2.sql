SELECT r.car, c.class, AVG(r.position) AS avg_pos, COUNT(r.race) AS race_count, cl.country AS car_country
    FROM Results r
    JOIN Cars c ON r.car = c.name
    JOIN Classes cl ON c.class = cl.class
    GROUP BY r.car
    ORDER BY avg_pos ASC, c.name ASC   -- сортировка по средней позиции и имени автомобиля
    LIMIT 1;    -- результат ограничиваем одним автомобилем