<!-- # SQL Homework

The Glasgow Film Theatre are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'
```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:
```
# terminal
psql -d marvel -f marvel.sql
```

Use the supplied data as the source of data to answer the questions.  Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave. -->

## Questions

1. Return ALL the data in the 'movies' table.

SELECT * FROM movies;

marvel=# SELECT * from movies;
 id |                title                | year | show_time 
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 17:45
  2 | The Incredible Hulk                 | 2008 | 23:55
  3 | Iron Man 2                          | 2010 | 14:10
  4 | Thor                                | 2011 | 15:25
  5 | Captain America: The First Avenger  | 2011 | 16:50
  6 | Avengers Assemble                   | 2012 | 19:45
  7 | Iron Man 3                          | 2013 | 18:15
  8 | Thor: The Dark World                | 2013 | 17:00
  9 | Batman Begins                       | 2005 | 21:00
 10 | Captain America: The Winter Soldier | 2014 | 19:20
 11 | Guardians of the Galaxy             | 2014 | 14:30
 12 | Avengers: Age of Ultron             | 2015 | 15:45
 13 | Ant-Man                             | 2015 | 20:15
 14 | Captain America: Civil War          | 2016 | 18:35
 15 | Doctor Strange                      | 2016 | 23:50
(15 rows)

2. Return ONLY the name column from the 'people' table

marvel=# SELECT name FROM people;
       name        
-------------------
 Gordon Bain
 John Daly
 Jodie Garden
 Ellen Grafton
 Allisder Hood
 Chris Kennedy
 Ruth Lees
 Harvey Wheaton
 Keir Macdonald
 Daniel MacDonald
 Arlene McDaid
 Colin McKean
 Murray McQuarrie
 Ryan Sinclair
 Michaela Strachan
(15 rows)

3. Oops! Someone at CodeClan spelled Alastair's name wrong! Change it to reflect the proper spelling (change 'Allisder Hood' to 'Alastair Hood').

UPDATE people SET name = 'Alastair Hood' WHERE id = 5;

UPDATE 1
marvel=# SELECT * FROM people;                                  id |       name        
----+-------------------
  1 | Gordon Bain
  2 | John Daly
  3 | Jodie Garden
  4 | Ellen Grafton
  6 | Chris Kennedy
  7 | Ruth Lees
  8 | Harvey Wheaton
  9 | Keir Macdonald
 10 | Daniel MacDonald
 11 | Arlene McDaid
 12 | Colin McKean
 13 | Murray McQuarrie
 14 | Ryan Sinclair
 15 | Michaela Strachan
  5 | Alastair Hood
(15 rows)


4. Return ONLY your name from the 'people' table.

SELECT name FROM people WHERE id = 13;
       name       
------------------
 Murray McQuarrie
(1 row)

5. The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

DELETE FROM movies WHERE title = 'Batman Begins';
DELETE 1
marvel=# SELECT * FROM movies;
 id |                title                | year | show_time 
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 17:45
  2 | The Incredible Hulk                 | 2008 | 23:55
  3 | Iron Man 2                          | 2010 | 14:10
  4 | Thor                                | 2011 | 15:25
  5 | Captain America: The First Avenger  | 2011 | 16:50
  6 | Avengers Assemble                   | 2012 | 19:45
  7 | Iron Man 3                          | 2013 | 18:15
  8 | Thor: The Dark World                | 2013 | 17:00
 10 | Captain America: The Winter Soldier | 2014 | 19:20
 11 | Guardians of the Galaxy             | 2014 | 14:30
 12 | Avengers: Age of Ultron             | 2015 | 15:45
 13 | Ant-Man                             | 2015 | 20:15
 14 | Captain America: Civil War          | 2016 | 18:35
 15 | Doctor Strange                      | 2016 | 23:50
(14 rows)


6. Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people (name) VALUES ('Ally McGilloway');
INSERT 0 1
marvel=# SELECT * FROM people;
 id |       name        
----+-------------------
  1 | Gordon Bain
  2 | John Daly
  3 | Jodie Garden
  4 | Ellen Grafton
  6 | Chris Kennedy
  7 | Ruth Lees
  8 | Harvey Wheaton
  9 | Keir Macdonald
 10 | Daniel MacDonald
 11 | Arlene McDaid
 12 | Colin McKean
 13 | Murray McQuarrie
 14 | Ryan Sinclair
 15 | Michaela Strachan
  5 | Alastair Hood
 16 | Ally McGilloway
(16 rows)

7. Harvey Wheaton has decided to hijack our movie evening, Remove him from the table of people.

DELETE FROM people WHERE name = 'Harvey Wheaton';
DELETE 1
marvel=# SELECT * FROM people;
 id |       name        
----+-------------------
  1 | Gordon Bain
  2 | John Daly
  3 | Jodie Garden
  4 | Ellen Grafton
  6 | Chris Kennedy
  7 | Ruth Lees
  9 | Keir Macdonald
 10 | Daniel MacDonald
 11 | Arlene McDaid
 12 | Colin McKean
 13 | Murray McQuarrie
 14 | Ryan Sinclair
 15 | Michaela Strachan
  5 | Alastair Hood
 16 | Ally McGilloway
(15 rows)

8. The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.

INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2016, 20.00);                       INSERT 0 1
marvel=# SELECT * FROM movies;
 id |                title                | year | show_time 
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 17:45
  2 | The Incredible Hulk                 | 2008 | 23:55
  3 | Iron Man 2                          | 2010 | 14:10
  4 | Thor                                | 2011 | 15:25
  5 | Captain America: The First Avenger  | 2011 | 16:50
  6 | Avengers Assemble                   | 2012 | 19:45
  7 | Iron Man 3                          | 2013 | 18:15
  8 | Thor: The Dark World                | 2013 | 17:00
 10 | Captain America: The Winter Soldier | 2014 | 19:20
 11 | Guardians of the Galaxy             | 2014 | 14:30
 12 | Avengers: Age of Ultron             | 2015 | 15:45
 13 | Ant-Man                             | 2015 | 20:15
 14 | Captain America: Civil War          | 2016 | 18:35
 15 | Doctor Strange                      | 2016 | 23:50
 16 | Guardians of the Galaxy 2           | 2016 | 20.00
(15 rows)

9. The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 12:10 to 21:30

UPDATE movies SET show_time = '21:30' WHERE id = 11;
UPDATE 1
marvel=# SELECT * FROM movies;
 id |                title                | year | show_time 
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 17:45
  2 | The Incredible Hulk                 | 2008 | 23:55
  3 | Iron Man 2                          | 2010 | 14:10
  4 | Thor                                | 2011 | 15:25
  5 | Captain America: The First Avenger  | 2011 | 16:50
  6 | Avengers Assemble                   | 2012 | 19:45
  7 | Iron Man 3                          | 2013 | 18:15
  8 | Thor: The Dark World                | 2013 | 17:00
 10 | Captain America: The Winter Soldier | 2014 | 19:20
 12 | Avengers: Age of Ultron             | 2015 | 15:45
 13 | Ant-Man                             | 2015 | 20:15
 14 | Captain America: Civil War          | 2016 | 18:35
 15 | Doctor Strange                      | 2016 | 23:50
 16 | Guardians of the Galaxy 2           | 2016 | 21:30
 11 | Guardians of the Galaxy             | 2014 | 21:30
(15 rows)

## Extension

1. Research how to delete multiple entries from your table in a single command.

DELETE FROM movies WHERE id IN (1, 2, 3);
DELETE 3
marvel=# SELECT * FROM movies;
 id |                title                | year | show_time 
----+-------------------------------------+------+-----------
  4 | Thor                                | 2011 | 15:25
  5 | Captain America: The First Avenger  | 2011 | 16:50
  6 | Avengers Assemble                   | 2012 | 19:45
  7 | Iron Man 3                          | 2013 | 18:15
  8 | Thor: The Dark World                | 2013 | 17:00
 10 | Captain America: The Winter Soldier | 2014 | 19:20
 12 | Avengers: Age of Ultron             | 2015 | 15:45
 13 | Ant-Man                             | 2015 | 20:15
 14 | Captain America: Civil War          | 2016 | 18:35
 15 | Doctor Strange                      | 2016 | 23:50
 16 | Guardians of the Galaxy 2           | 2016 | 21:30
 11 | Guardians of the Galaxy             | 2014 | 21:30
(12 rows)
