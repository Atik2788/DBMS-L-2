-- Active: 1747503120726@@127.0.0.1@5432@ph
CREATE Table students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT check (age >=18),
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(50),
    blood_group VARCHAR(50),
    country VARCHAR(50)
);

SELECT * from students;
SELECT student_id, first_name, email from students;

ALTER Table students
    ADD COLUMN dob Date;

INSERT INTO students(first_name, last_name, age, grade, course, email, dob, blood_group, country )
VALUES
('John', 'Doe', 25, 'A', 'Math', 'john@gmail.com', '2004-1-05', 'O+', 'USA'),
('Alice', 'Carter', 20, 'A', 'Math', 'alice@gmail.com', '2005-1-05', 'O+', 'USA'),
('Mark', 'Doe', 18, 'A', 'English', 'mark@gmail.com', '2000-1-05', 'O+', 'USA'),
('Keven', 'Jon', 26, 'B', 'Economics', 'keven@gmail.com', '2005-1-15', 'O+', 'USA');


SELECT * FROM students ORDER BY first_name ASC;
SELECT * FROM students ORDER BY first_name DESC;
SELECT DISTINCT country from students;