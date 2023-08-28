CREATE OR REPLACE PROCEDURE add_film (title VARCHAR, description TEXT, release_year YEAR, language_id INTEGER, rental_duration INTEGER, rental_rate NUMERIC (5, 2), length INTEGER, replacement_cost NUMERIC(4, 2), rating mpaa_rating)
LANGUAGE plpgsql
AS $$
BEGIN
	INSERT INTO film (title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating)
	VALUES(title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating);
END;
CALL add_film ('Title3', 'Description', 2023, 1, 7, 4.99, 120, 14.99, 'PG'); $$