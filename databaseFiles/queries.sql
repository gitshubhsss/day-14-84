CREATE DATABASE IF NOT EXISTS instagram;
USE instagram;

CREATE TABLE user
(
	id INT,
    age INT,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE,
    following INT DEFAULT 0,
    followers INT,
    CONSTRAINT age_check CHECK (age>=13),
    primary key (id)
);

CREATE TABLE posts
(
	id INT PRIMARY KEY,
    content VARCHAR(200),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES user(id)
);

INSERT INTO user
(id,age,name,email,following,followers)
VALUES
(1,25,"shubham","shubham@yahoo.in",41,258),
(2,24,"pavan","pavan@yahoo.in",41,5000),
(3,23,"ashish","ashish@yahoo.in",123,50),
(4,22,"alam","alam@yahoo.in",20,55),
(5,21,"arif","arif@yahoo.in",56,77),
(6,13,"karan","karan@yahoo.in",88,100);

INSERT INTO user
(id,age,name,email,following,followers)
VALUES
(19,55,"JS","JS@yahoo.in",41,258),
(18,84,"HTML","HTML@yahoo.in",41,5000);

 SELECT name,email,followers
 FROM user
 WHERE followers>=200;
 
 SELECT name ,email,age
 FROM user
 WHERE age +1=25;
 
 SELECT name ,email,age,followers
 FROM user
 WHERE age>20 AND followers>=500;
 
 select * from user;
 
 SELECT *FROM user
 WHERE age<23 OR following<100;
 
 SELECT * FROM user
 WHERE age BETWEEN 21 AND 25;
 
 SELECT * FROM user
 WHERE email IN("shubham@yahoo.in");
 
 SELECT * FROM user 
 WHERE age NOT IN(21,25);
 
 SELECT name,age,followers
 FROM user
 WHERE age>15 LIMIT 3;
 
  SELECT  max(followers)
  FROM user;
  
  SELECT count(age) from user
  WHERE age>14;
  
  SELECT min(following)
  FROM user;
  
  SELECT avg(age)
  FROM user;
  
  SELECT sum(followers)
  FROM user;
  
  SELECT name, age, count(id)
  FROM user
  GROUP BY age ,name;
  
  SELECT name,age,max(followers)
  FROM user
  GROUP BY age,name;
  
  SELECT name,age,followers,max(followers)
  FROM user
  GROUP BY age,name,followers
  HAVING followers >200;
  
  SELECT name,age,followers,max(followers)
  FROM user
  GROUP BY age,name,followers
  HAVING followers >200
  ORDER BY followers;
  
  UPDATE user
  SET age=15
  WHERE name="shubham";
  
  SET SQL_SAFE_UPDATES=0;
  
  SELECT * FROM user
  WHERE age IN(15);
  
  ALTER TABLE user
  ADD COLUMN city VARCHAR(25) DEFAULT "pune";
  
  ALTER TABLE user
  DROP COLUMN age;
  
  ALTER TABLE user
  RENAME TO insta_user;
  
  ALTER TABLE insta_user
  RENAME TO user;
  
  ALTER TABLE user
  CHANGE COLUMN followers subscriber INT;
  
   ALTER TABLE user
  CHANGE COLUMN subscriber follower INT;
 
 select * from user;
 
 ALTER TABLE user
 MODIFY COLUMN city VARCHAR(50) DEFAULT "Delhi";
 
  
  