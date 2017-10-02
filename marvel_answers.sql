-- Return ALL the data in the 'movies' table.
SELECT * FROM movies;
id |                title                | year | show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 19:40
 2 | The Incredible Hulk                 | 2008 | 18:05
 3 | Iron Man 2                          | 2010 | 12:10
 4 | Thor                                | 2011 | 19:50
 5 | Captain America: The First Avenger  | 2011 | 12:30
 6 | Avengers Assemble                   | 2012 | 18:10
 7 | Iron Man 3                          | 2013 | 23:15
 8 | Thor: The Dark World                | 2013 | 17:30
 9 | Batman Begins                       | 2005 | 13:45
10 | Captain America: The Winter Soldier | 2014 | 21:55
11 | Guardians of the Galaxy             | 2014 | 22:55
12 | Avengers: Age of Ultron             | 2015 | 12:40
13 | Ant-Man                             | 2015 | 23:15
14 | Captain America: Civil War          | 2016 | 18:05
15 | Doctor Strange                      | 2016 | 16:05
16 | Guardians of the Galaxy 2           | 2017 | 23:50
(16 rows)

-- Return ONLY the name column from the 'people' table
SELECT name FROM people;


name
----------------------
Clare   Blackburne
John    Crookshank
Alistair        Kane
Jamie   Klein
Fiona   Lindsay
Alex    MacFadyen
Peter   McCready
Scott   Murray
Hayley  Prior
Martin  Reid
Caroline        Reid
Louise  Reid
Tobi    Sanusi
Jamie   Sime
Michael Slevin
Alex    Smith
James   Stewart
Chad    Tung
John Daley
(19 rows)

-- 3.Oops! Someone at CodeClan spelled John's name wrong! Change it to reflect the proper spelling (change 'John Crookshank' to 'John Cruickshank').

UPDATE people SET name = 'John	Cruickshank' WHERE id = 2;
SELECT * FROM people;
id |         name
----+----------------------
 1 | Clare   Blackburne
 3 | Alistair        Kane
 4 | Jamie   Klein
 5 | Fiona   Lindsay
 6 | Alex    MacFadyen
 7 | Peter   McCready
 8 | Scott   Murray
 9 | Hayley  Prior
10 | Martin  Reid
11 | Caroline        Reid
12 | Louise  Reid
13 | Tobi    Sanusi
14 | Jamie   Sime
15 | Michael Slevin
16 | Alex    Smith
17 | James   Stewart
18 | Chad    Tung
19 | John Daley
 2 | John    Cruickshank
(19 rows)

-- Return ONLY your name from the 'people' table.
SELECT * from people -- returns all names and IDs. Take my ID...
SELECT name from people where id = 15

name
----------------
Michael Slevin
(1 row)


-- The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
DELETE FROM movies WHERE title = 'Batman Begins';
SELECT * FROM movies;

------+-----------
  1 | Iron Man                            | 2008 | 19:40
  2 | The Incredible Hulk                 | 2008 | 18:05
  3 | Iron Man 2                          | 2010 | 12:10
  4 | Thor                                | 2011 | 19:50
  5 | Captain America: The First Avenger  | 2011 | 12:30
  6 | Avengers Assemble                   | 2012 | 18:10
  7 | Iron Man 3                          | 2013 | 23:15
  8 | Thor: The Dark World                | 2013 | 17:30
 10 | Captain America: The Winter Soldier | 2014 | 21:55
 11 | Guardians of the Galaxy             | 2014 | 22:55
 12 | Avengers: Age of Ultron             | 2015 | 12:40
 13 | Ant-Man                             | 2015 | 23:15
 14 | Captain America: Civil War          | 2016 | 18:05
 15 | Doctor Strange                      | 2016 | 16:05
 16 | Guardians of the Galaxy 2           | 2017 | 23:50
(15 rows)

-- Create a new entry in the 'people' table with the name of one of the instructors.


INSERT INTO people (name) VALUES ('Stevealan Allyjohn');
SELECT * FROM people;
id |         name
----+----------------------
 1 | Clare   Blackburne
 2 | John    Crookshank
 3 | Alistair        Kane
 4 | Jamie   Klein
 5 | Fiona   Lindsay
 6 | Alex    MacFadyen
 7 | Peter   McCready
 8 | Scott   Murray
 9 | Hayley  Prior
10 | Martin  Reid
11 | Caroline        Reid
12 | Louise  Reid
13 | Tobi    Sanusi
14 | Jamie   Sime
15 | Michael Slevin
16 | Alex    Smith
17 | James   Stewart
18 | Chad    Tung
19 | John Daley
20 | Stevealan Allyjohn
(20 rows)

-- John Daley (G1), has decided to hijack our movie evening, Remove him from the table of people.
DELETE FROM people where name = 'John Daley';
SELECT name FROM people;

Clare   Blackburne
John    Crookshank
Alistair        Kane
Jamie   Klein
Fiona   Lindsay
Alex    MacFadyen
Peter   McCready
Scott   Murray
Hayley  Prior
Martin  Reid
Caroline        Reid
Louise  Reid
Tobi    Sanusi
Jamie   Sime
Michael Slevin
Alex    Smith
James   Stewart
Chad    Tung
(18 rows)

OR


DELETE FROM people where id = 19;
SELECT name FROM people;

Clare   Blackburne
John    Crookshank
Alistair        Kane
Jamie   Klein
Fiona   Lindsay
Alex    MacFadyen
Peter   McCready
Scott   Murray
Hayley  Prior
Martin  Reid
Caroline        Reid
Louise  Reid
Tobi    Sanusi
Jamie   Sime
Michael Slevin
Alex    Smith
James   Stewart
Chad    Tung
(18 rows)


-- Somehow the list of people includes two people named 'Alex'. Change these entries to the proper names ('Alex the First', 'Alex the Second')

SELECT * FROM people; -- to get IDs
UPDATE people SET name = 'Alex the First' WHERE id = 6;
UPDATE people SET name = 'Alex the Second' WHERE id = 16;
SELECT * FROM people;

id |         name
----+----------------------
 1 | Clare   Blackburne
 2 | John    Crookshank
 3 | Alistair        Kane
 4 | Jamie   Klein
 5 | Fiona   Lindsay
 7 | Peter   McCready
 8 | Scott   Murray
 9 | Hayley  Prior
10 | Martin  Reid
11 | Caroline        Reid
12 | Louise  Reid
13 | Tobi    Sanusi
14 | Jamie   Sime
15 | Michael Slevin
17 | James   Stewart
18 | Chad    Tung
19 | John Daley
 6 | Alex the First
16 | Alex the Second


-- The cinema has just heard that they will be holding an exclusive midnight showing of 'Guardians of the Galaxy 2'!! Create a new entry in the 'movies' table to reflect this.
-- The cinema would also like to make the Guardian movies a back to back feature. Update the 'Guardians of the Galaxy' show time from 18:55 to 21:30

UPDATE movies SET show_time = '21:30' WHERE  title = 'Guardians of the Galaxy';
UPDATE movies SET show_time = '00:00' WHERE title = 'Guardians of the Galaxy 2';
SELECT * from movies;

id |                title                | year | show_time
----+-------------------------------------+------+-----------
 1 | Iron Man                            | 2008 | 19:40
 2 | The Incredible Hulk                 | 2008 | 18:05
 3 | Iron Man 2                          | 2010 | 12:10
 4 | Thor                                | 2011 | 19:50
 5 | Captain America: The First Avenger  | 2011 | 12:30
 6 | Avengers Assemble                   | 2012 | 18:10
 7 | Iron Man 3                          | 2013 | 23:15
 8 | Thor: The Dark World                | 2013 | 17:30
 9 | Batman Begins                       | 2005 | 13:45
10 | Captain America: The Winter Soldier | 2014 | 21:55
12 | Avengers: Age of Ultron             | 2015 | 12:40
13 | Ant-Man                             | 2015 | 23:15
14 | Captain America: Civil War          | 2016 | 18:05
15 | Doctor Strange                      | 2016 | 16:05
11 | Guardians of the Galaxy             | 2014 | 21:30
16 | Guardians of the Galaxy 2           | 2017 | 00:00
(16 rows)

-- Research how to delete multiple entries from your table in a single command.


DELETE FROM movies WHERE year = 2008;
SELECT * FROM movies;
