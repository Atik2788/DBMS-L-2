CREATE Table employes(
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);
SELECT * FROM employes;
INSERT INTO employes VALUES(1, 'John Doe', 101);
INSERT INTO employes VALUES(2, 'John Week', 102);



CREATE Table depertments(
    dept_id INT,
    dept_name VARCHAR(50)
);
SELECT * from depertments;
INSERT INTO depertments VALUES(101, 'Human Resors');
INSERT INTO depertments VALUES(102, 'Marketing');

SELECT * from employes
   NATURAL JOIN depertments;

SELECT * from employes
   CROSS JOIN depertments;


