SELECT DISTINCT v.maker, m.model     -- DiSTINCT, чтобы избежать дублирования данных
FROM Motorcycle m
JOIN Vehicle v ON m.model = v.model
WHERE m.horsepower > 150
  AND m.price < 20000
  AND m.type = 'Sport'
ORDER BY m.horsepower DESC;
