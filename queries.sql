-- Query 1: JOIN
SELECT 
    booking_id,
    u.name AS customer_name,
    v.name AS vehicle_name,
    start_date,
    end_date,
    b.status
FROM bookings AS b
INNER JOIN users AS u  USING(user_id)
INNER JOIN vehicles AS v USING(vehicle_id)
ORDER BY b.booking_id;



-- Query 2: EXISTS
SELECT * FROM vehicles AS v
WHERE NOT EXISTS (
    SELECT *
    FROM bookings AS b
    WHERE b.vehicle_id = v.vehicle_id
);


-- Query 3: WHERE
SELECT * FROM vehicles
WHERE type = 'car'
AND status = 'available';


-- Query 4: GROUP BY and HAVING
SELECT 
    name AS vehicle_name,
    COUNT(b.booking_id) AS total_bookings
FROM bookings AS b
JOIN vehicles AS v USING(vehicle_id)
GROUP BY name
HAVING COUNT(b.booking_id) > 2;
