CREATE TABLE cities(
  name VARCHAR(50),
  city VARCHAR(50),
  population INTEGER,
  area INTEGER
);

INSERT INTO cities(name,county,population,area)
VALUES 
	('Tokyo','Japan',38505000,8223),
  ('Delhi','India',28125000,2240),
  ('Shsngahi','China',2125000,4015),
  ('Sao Paulo','Brazil',20935000,3043);

SELECT * FROM cities;

SELECT name,country FROM cities;

--diving population with area--
SELECT name,poplation/area FROM cities;

--postgres can only go up to 2.14 billion interges
--if we do population * area we get integer out of range
SELECT name,poplation/area AS population_density FROM cities;
-- to name the calculation of population/area as population

-- to join two string we use ||--
SELECT name || country FROM cities;
SELECT name|| ', ' || country AS location FROM cities;
-- to join we can also use concate()
SELECT CONCAT(name, ', ' ,country) AS location FROM cities;
SELECT CONCAT(upper(name), ', ' ,upper(country)) AS LOCATION FROM cities;

SELECT name,area FROM cities WHERE area>4000;



-- You don't need to change these lines
CREATE TABLE movies (
    title VARCHAR(60),
    box_office INTEGER
);

INSERT INTO movies (title, box_office)
VALUES 
    ('The Avengers', 1500000000),
    ('Batman v Superman', 873000000);
    

-- WRITE YOUR SOLUTION BELOW THIS LINE!
SELECT * FROM movies;

    
