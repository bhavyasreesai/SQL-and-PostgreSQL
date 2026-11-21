CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40),
	department VARCHAR(40),
	price INTEGER,
	weight INTEGER

);

SELECT * FROM public.products
ORDER BY id ASC 

INSERT INTO products (name,department,price,weight)
VALUES('shirt','clothes',20,1);
SELECT * FROM public.products
ORDER BY id ASC 

INSERT INTO products (name,department,weight)
VALUES('pants','clothes',3);
SELECT * FROM public.products
ORDER BY id ASC 
  
ALTER TABLE products 
ALTER COLUMN price
SET NOT NULL;


UPDATE products
SET price =999
WHERE price IS NULL;

SELECT * FROM public.products
ORDER BY id ASC 

ALTER TABLE products 
ALTER COLUMN price
SET NOT NULL;

SELECT * FROM public.products
ORDER BY id ASC 

ALTER TABLE products 
ADD UNIQUE (name);
