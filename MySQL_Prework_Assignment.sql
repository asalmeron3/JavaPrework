CREATE DATABASE bn_inventory;
USE bn_inventory;
CREATE TABLE books (
  id INT AUTO_INCREMENT NOT NULL,
  title VARCHAR (255) NOT NULL,
  author VARCHAR(255) NOT NULL,
  in-stock BOOLEAN DEFAULT false,
  quantity NUMBERIC(3) NOT NULL,
  PRIMARY KEY (id)
);

-- Inserting data into the 'books' table --
INSERT INTO books (title, author, in-stock, quantity) 
  VALUES ("Harry Potter and the Sorceror's Stone", "J. K. Rowling", true, 6);
INSERT INTO books (title, author, in-stock, quantity) 
  VALUES ("Harry Potter and the Chamber of Secretes", "J. K. Rowling", true, 4);
INSERT INTO books (title, author, in-stock, quantity) 
  VALUES ("Harry Potter and the Prisoner of Azkaban", "J. K. Rowling", true, 3);
INSERT INTO books (title, author, in-stock, quantity) 
  VALUES ("A Tale of Two Cities", "Charles Dickens", true, 3);

-- viewing all the data in the 'books' table
SELECT * FROM books;

-- Updating a row by id (assuming 'A Tale of Two Cities' has the id 4)
UPDATE books SET quanity = 5 WHERE id = 4;

-- Deleting a row by id (Deleting 'Prisoner of Azkaban' assuming its id is 3)
DELETE FROM books WHERE id = 3;