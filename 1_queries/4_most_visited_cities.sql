/* Get a list of the most visited cities */

SELECT properties.city, COUNT(reservations) as total_reservations 
FROM reservations
JOIN properties ON reservations.property_id = properties.id
GROUP BY properties.city
ORDER BY total_reservations DESC;