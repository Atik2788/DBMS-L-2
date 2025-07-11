CREATE Table employees2(
    employee_id SERIAL PRIMARY key,
    employee_name VARCHAR(50),
    depertment_id INT REFERENCES depertments2(depertment_id),
    salary DECIMAL(10, 2),
    hire_date Date
);

SELECT * FROM employees2;

CREATE Table depertments2(
    depertment_id SERIAL PRIMARY KEY,
    depertment_name VARCHAR(50)
);

SELECT * FROM depertments2;


INSERT INTO depertments2 (depertment_name) VALUES 
    ('HR'), 
    ('Marketing'), 
    ('Finance'), 
    ('IT'), 
    ('Sales'), 
    ('Engineering'), 
    ('Customer Support'), 
    ('Administration'), 
    ('Research'), 
    ('Quality Assurance');

    INSERT INTO employees2 (employee_name, depertment_id, salary, hire_date) VALUES 
    ('John Doe', 1, 60000.00, '2022-01-10'),
    ('Jane Smith', 2, 75000.50, '2021-05-22'),
    ('Bob Johnson', 3, 80000.75, '2020-11-15'),
    ('Alice Williams', 4, 90000.25, '2019-08-03'),
    ('David Lee', 5, 65000.50, '2020-03-18'),
    ('Sara Brown', 6, 70000.00, '2021-09-28'),
    ('Mike Miller', 7, 55000.75, '2022-02-05'),
    ('Emily Davis', 8, 95000.00, '2018-12-12'),
    ('Chris Wilson', 9, 72000.50, '2020-06-30'),
    ('Amy White', 10, 68000.25, '2021-11-09'),
    ('John Johnson', 1, 62000.00, '2022-01-15'),
    ('Jessica Thompson', 2, 78000.50, '2021-06-05'),
    ('Michael Harris', 3, 85000.75, '2020-11-25'),
    ('Emma Martinez', 4, 92000.25, '2019-09-15'),
    ('James Taylor', 5, 67000.50, '2020-04-08'),
    ('Sophia Anderson', 6, 72000.00, '2021-10-10'),
    ('William Jackson', 7, 56000.75, '2022-02-10'),
    ('Olivia Nelson', 8, 97000.00, '2018-12-20'),
    ('Daniel White', 9, 73000.50, '2020-07-05'),
    ('Ava Wilson', 10, 69000.25, '2021-11-15'),
    ('Matthew Brown', 1, 63000.00, '2022-01-20'),
    ('Emily Garcia', 2, 76000.50, '2021-06-15'),
    ('Christopher Allen', 3, 86000.75, '2020-12-05'),
    ('Madison Hall', 4, 93000.25, '2019-09-25'),
    ('Andrew Cook', 5, 68000.50, '2020-04-18'),
    ('Abigail Torres', 6, 73000.00, '2021-10-20'),
    ('Ethan Murphy', 7, 57000.75, '2022-02-15'),
    ('Ella King', 8, 98000.00, '2018-12-28'),
    ('Nathan Rivera', 9, 74000.50, '2020-07-15'),
    ('Mia Roberts', 10, 70000.25, '2021-11-20');

SELECT * FROM employees2
    JOIN depertments2 on employees2.depertment_id = depertments2.depertment_id;


SELECT * FROM employees2
    JOIN depertments2 USING(depertment_id);



SELECT depertment_name, round(avg(salary)) as avg_salary FROM employees2
    JOIN depertments2 USING(depertment_id)    
    GROUP BY depertment_name;

SELECT depertment_name, count(employee_id) as employeeCount FROM employees2
    JOIN depertments2 USING(depertment_id) 
    GROUP BY depertment_name;

SELECT depertment_name, round(avg(salary)) as avg_salary FROM employees2
    JOIN depertments2 USING(depertment_id) 
    GROUP BY depertment_name
    ORDER BY avg_salary DESC
    LIMIT 1;

SELECT EXTRACT(YEAR from hire_date) as hire_year, count(*) as employee_number FROM employees2
    GROUP BY hire_year;
