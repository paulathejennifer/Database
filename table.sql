CREATE SCHEMA personal_project;

CREATE table personal_project.author(
    author_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

INSERT INTO author (first_name, last_name) VALUES("Mary", "Otieno"),("George", "Ostwell"),("Chimamanda Ngozi", "Adichie");
SELECT * FROM author;
CREATE TABLE personal_project.books(
    book_id SERIAL PRIMARY KEY,
    author_id INTEGER NOT NULL,
    title VARCHAR(255) NOT NULL,
    publication_year INTEGER,
    FOREIGN KEY(author_id) REFERENCES author (author_id)
  
);
INSERT INTO books(title, publication_year, author_id)
VALUES('Pride and Prejudice', 1813, 1),('Nineteen Eighty-Four', 1994, 2),('Half of a Yeloow Sun', 2006, 3),('Emma', 1815, 1);


SELECT *FROM personal_books

