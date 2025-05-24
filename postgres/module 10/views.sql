SELECT * from employees;

CREATE View dept_avg_salary_new  
as
SELECT department_name, avg(salary) from employees GROUP BY department_name;

SELECT * from dept_avg_salary_new;