-- own answer which was wrong
-- SELECT reservations.property_id, properties.title, properties.cost_per_night, reservations.start_date, avg(property_reviews.rating)
-- FROM reservations
-- JOIN properties ON properties.id = reservations.property_id
-- JOIN property_reviews ON property_reviews.property_id = properties.id
-- WHERE reservations.guest_id = 1
-- AND reservations.end_date < now()::date
-- GROUP BY reservations.start_date
-- ORDER BY start_date
-- LIMIT 10;

SELECT properties.*, reservations.*, avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id 
WHERE reservations.guest_id = 1
AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;