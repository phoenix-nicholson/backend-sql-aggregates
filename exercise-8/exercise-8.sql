-- rank of film category by times rented
-- include the name, count, and rank
SELECT 
name,
COUNT(rental_date),
RANK() OVER (ORDER BY COUNT(rental_date) DESC)
FROM 
rental
LEFT JOIN
inventory
ON
inventory.inventory_id = rental.inventory_id
LEFT JOIN 
film
ON
film.film_id = inventory.film_id
LEFT JOIN 
film_category
ON
film.film_id = film_category.film_id
LEFT JOIN 
category
ON
category.category_id = film_category.category_id
GROUP BY
name