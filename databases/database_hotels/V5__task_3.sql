
WITH HotelCategories AS (
    SELECT  
        h.ID_hotel,
        h.name AS hotel_name,
        CASE
            WHEN AVG(r.price) < 175 THEN 'Дешевый'
            WHEN AVG(r.price) BETWEEN 175 AND 300 THEN 'Средний'
            ELSE 'Дорогой'
        END AS category
    FROM Hotel h
    JOIN Room r ON h.ID_hotel = r.ID_hotel
    GROUP BY h.ID_hotel
),
CustomerPreferences AS (
    SELECT
        c.ID_customer,
        c.name,
        GROUP_CONCAT(DISTINCT hc.hotel_name ORDER BY hc.hotel_name SEPARATOR ', ') AS visited_hotels,
        MAX(CASE
            WHEN hc.category = 'Дорогой' THEN 3
            WHEN hc.category = 'Средний' THEN 2
            WHEN hc.category = 'Дешевый' THEN 1
        END) AS max_category
    FROM Customer c
    JOIN Booking b ON c.ID_customer = b.ID_customer
    JOIN Room r ON b.ID_room = r.ID_room
    JOIN HotelCategories hc ON r.ID_hotel = hc.ID_hotel
    GROUP BY c.ID_customer, c.name
)
SELECT
    ID_customer,
    name,
    CASE
        WHEN max_category = 3 THEN 'Дорогой'
        WHEN max_category = 2 THEN 'Средний'
        WHEN max_category = 1 THEN 'Дешевый'
    END AS preferred_hotel_type,
    visited_hotels
FROM
    CustomerPreferences
ORDER BY
    FIELD(preferred_hotel_type, 'Дешевый', 'Средний', 'Дорогой');
