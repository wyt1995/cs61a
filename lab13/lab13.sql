.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color = "blue" AND pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color = "blue" AND pet = "dog";


CREATE TABLE smallest_int_having AS
  SELECT time, smallest FROM students GROUP BY smallest HAVING count(*)<2;


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color
    FROM students as a, students as b
    WHERE a.pet = b.pet AND a.song = b.song AND a.time <> b.time;


CREATE TABLE sevens AS
  SELECT seven FROM students, numbers
    WHERE numbers.'7' = 'True' AND students.smallest <= 7 AND numbers.time = students.time;

