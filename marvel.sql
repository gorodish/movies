DROP TABLE 'attendances';
DROP TABLE 'movies';
DROP TABLE 'people';

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

CREATE TABLE attendances (
	id SERIAL8 PRIMARY KEY,
	person_id INT REFERENCES people(id) ON DELETE CASCADE,
	movie_id INT REFERENCES movies(id) ON DELETE CASCADE
);

INSERT INTO people (name) VALUES ('Gordon Bain');
INSERT INTO people (name) VALUES ('John Daly');
INSERT INTO people (name) VALUES ('Jodie Garden');
INSERT INTO people (name) VALUES ('Ellen Grafton');
INSERT INTO people (name) VALUES ('Allisder Hood');
INSERT INTO people (name) VALUES ('Chris Kennedy');
INSERT INTO people (name) VALUES ('Ruth Lees');
INSERT INTO people (name) VALUES ('Harvey Wheaton');
INSERT INTO people (name) VALUES ('Keir Macdonald');
INSERT INTO people (name) VALUES ('Daniel MacDonald');
INSERT INTO people (name) VALUES ('Arlene McDaid');
INSERT INTO people (name) VALUES ('Colin McKean');
INSERT INTO people (name) VALUES ('Murray McQuarrie');
INSERT INTO people (name) VALUES ('Ryan Sinclair');
INSERT INTO people (name) VALUES ('Michaela Strachan');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '17:45');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '23:55');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '14:10');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '15:25');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '16:50');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '19:45');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '18:15');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '17:00');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '21:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '19:20');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '14:30');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '15:45');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '20:15');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '18:35');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '23:50');

INSERT INTO attendances (person_id, movie_id) VALUES (7, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (2, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (4, 8);
INSERT INTO attendances (person_id, movie_id) VALUES (15, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (15, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (15, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (6, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (15, 8);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (15, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (15, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (7, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (1, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (2, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 3);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 8);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (1, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (1, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (13, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 12);
INSERT INTO attendances (person_id, movie_id) VALUES (2, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (6, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (13, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 3);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 4);
INSERT INTO attendances (person_id, movie_id) VALUES (13, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (15, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (4, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 12);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (4, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 3);
INSERT INTO attendances (person_id, movie_id) VALUES (2, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (14, 13);
INSERT INTO attendances (person_id, movie_id) VALUES (6, 12);
INSERT INTO attendances (person_id, movie_id) VALUES (14, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (7, 12);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (7, 8);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 1);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 5);
INSERT INTO attendances (person_id, movie_id) VALUES (15, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 10);
INSERT INTO attendances (person_id, movie_id) VALUES (3, 4);
INSERT INTO attendances (person_id, movie_id) VALUES (12, 12);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (10, 9);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 7);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (7, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (2, 6);
INSERT INTO attendances (person_id, movie_id) VALUES (7, 4);
INSERT INTO attendances (person_id, movie_id) VALUES (5, 2);
INSERT INTO attendances (person_id, movie_id) VALUES (2, 15);
INSERT INTO attendances (person_id, movie_id) VALUES (8, 14);
INSERT INTO attendances (person_id, movie_id) VALUES (9, 11);
INSERT INTO attendances (person_id, movie_id) VALUES (11, 15);