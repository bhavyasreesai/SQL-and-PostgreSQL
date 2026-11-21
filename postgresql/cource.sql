(
  SELECT *  FROM products ORDER BY price DESC LIMIT 4
)
UNION 
( 
  SELECT * FROM products ORDER BY price/weight DESC LIMIT 4
);
-- TO SEE DUPLICATES WE USE UNION ALL INSTED OF UNION

--INTERSECT

(
  SELECT *  FROM products ORDER BY price DESC LIMIT 4
)
INTERSECT 
(
  SELECT * FROM products ORDER BY price/weight DESC LIMIT 4
);

--EXCEPT
(
  SELECT * FROM products ORDER BY price DESC LIMIT 4
)
EXCEPT 
(
  SELECT * FROM products ORDER BY price/weight DESC LIMIT 4
);



--UNION

SELECT manufacturer FROM phones WHERE price<170

UNION 

SELECT manufacturer  FROM phones GROUP BY manufacturer HAVING COUNT(*)>2;



--CASE

SELECT 
  name , 
  price ,
  CASE
      WHEN price>600 THEN 'high'
      WHEN price >300 THEN 'medium'
      ELSE 'Chep'
  END
FROM products;


