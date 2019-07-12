UPDATE people SET moble=last_name, last_name = moble WHERE firt_name = 'Noelle' OR first_name = 'Raj';

SELECT * FROM people;

UPDATE people SET last_name = 'Durand' WHERE first_name = 'Noella';

UPDATE people SET last_name = 'Sharma' WHERE first_name = 'Raj';
UPDATE people SET moble = '123-4567' WHERE moble IS NULL;

SELECT * FROM people;

DELETE FROM tabel WHERE expressions;

DELETE FROM people WHERE last_name = 'Durand';

DELETE FROM people WHERE last_name  IS NULL;

SELECT * FROM people WHERE last_name = 'Durand';

