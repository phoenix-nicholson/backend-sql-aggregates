-- the average film length by category
-- include the category name and avg length
SELECT 
category.name AS name, 
AVG(film.length) AS avg
FROM
category
LEFT JOIN 
film_category
ON
category.category_id = film_category.category_id
LEFT JOIN 
film 
ON
film_category.film_id = film.film_id
GROUP BY 
name