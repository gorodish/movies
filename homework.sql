DROP TABLE movies CASCADE;
DROP TABLE people CASCADE;
DROP TABLE attendance CASCADE;


SELECT * from movies;

SELECT name FROM people;

UPDATE people SET name = 'Alastair Hood' WHERE id = 5;

SELECT name FROM people WHERE id = 13

DELETE FROM movies WHERE title = 'Batman Begins';

INSERT INTO people (name) VALUES ('Ally McGilloway');

DELETE FROM people WHERE name = 'Harvey Wheaton';

INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2016, 20.00)

UPDATE movies SET show_time = '21:30' WHERE id = 11;

DELETE FROM movies WHERE id IN (1, 2, 3);