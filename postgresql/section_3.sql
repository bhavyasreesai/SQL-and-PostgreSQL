CREATE TABLE users(
  id SERIAL PRIMARY KEY,--SERIAL = AUTOMATICALLY CONTINUES THE VALUES
  username VARCHAR(50)
  );
  
 INSER INTO users(username)
 VALUES('RAM'),('RAMA'),('SITA'),('GITA');
 
 
SELECT * FROM users;


CREATE TABLE photos(
  id SERIAL PRIMARY KEY,
  url VARCHAR(200),
  user_id INTEGER REFERENCES users(id)
  );
INSERT INTO photos(url,user_id)
VALUES 
  ('http://one.jpg',4),
  ('http://two.jpg',1),
  ('http://three.jpg',1),
  ('http://four.jpg',2), 
  ('http://five.jpg',3);
  
SELECT * FROM photos;
SELECT * FROM photos WHERE user_id=4;
SELECT * FROM photos JOIN users ON users.id=photos.user_id;
SELECT url FROM photos JOIN users ON users.id=photos.user_id;
