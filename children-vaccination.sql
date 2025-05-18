CREATE TABLE parent (
    parent_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15),
    email VARCHAR(100)
);

SELECT * FROM parent

CREATE TABLE child (
    child_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL
);

SELECT * FROM child

CREATE TABLE parent_child_relationship (
    relationship_id SERIAL PRIMARY KEY,
    parent_id INTEGER NOT NULL,
    child_id INTEGER NOT NULL,
    FOREIGN KEY (parent_id) REFERENCES parent (parent_id),
    FOREIGN KEY (child_id) REFERENCES child (child_id)
);

SELECT *FROM parent_child_relationship

INSERT INTO parent (first_name, last_name, phone_number, email)
VALUES 
('John', 'Doe', '1234567890', 'john.doe@example.com'),
('Jane', 'Smith', '9876543210', 'jane.smith@example.com');

SELECT * FROM parent

INSERT INTO child (first_name, last_name, date_of_birth)
VALUES
('Jane', 'Maina', '2021-03-01'),
('Peter', 'Otieno', '2020-12-15'),
('Charlie', 'Mwangi', '2018-11-10'),
('Fiona', 'Okuro', '2022-01-20'),
('Evan', 'Nyambura', '2020-06-05'),
('Liam', 'Wanjala', '2019-09-12'),
('Ivy', 'Mbakaya', '2023-02-11'),
('Henry', 'Nyinawabagesera', '2017-05-03'),
('Grace', 'Chioma', '2021-11-08'),
('Jack', 'Kisanet', '2020-01-25'),
('Elijah', 'Muiruri', '2019-08-14'),
('Maya', 'Makuto', '2022-10-07'),
('Shsay', 'Matano', '2018-04-19'),
('Olivia', 'Hill', '2021-06-30'),
('Sophia', 'Wanjiku', '2019-01-16');
SELECT * FROM child

INSERT INTO parent_child_relationship (parent_id, child_id)
VALUES
(1, 1), (1, 2), (2, 3), (2, 4), (1, 5), 
(1, 6), (2, 7), (2, 8), (1, 9), (2, 10),
(1, 11), (2, 12), (1, 13), (2, 14), (1, 15);
SELECT * FROM parent_child_relationship