SELECT * from employees;

CREATE or REPLACE Function del_emp_by_id(p_emp_id int)
RETURNS void
LANGUAGE SQL
as
$$
    DELETE from employees WHERE employee_id = p_emp_id;
$$;

SELECT del_emp_by_id(29);

CREATE Procedure remove_emp1_var()
LANGUAGE plpgsql
AS
$$
    DECLARE
    test_var int;
    BEGIN
        SELECT employee_id INTO test_var from employees WHERE employee_id = 27; 
        DELETE from employees WHERE employee_id = test_var;
    END
$$

CALL remove_emp1_var();



CREATE Procedure remove_emp_by_id(p_emp_id int)
LANGUAGE plpgsql
AS
$$
    DECLARE
    test_var int;
    BEGIN
        SELECT employee_id INTO test_var from employees WHERE employee_id = p_emp_id; 
        DELETE from employees WHERE employee_id = test_var;

        RAISE NOTICE 'Employed Removed Successfully!';
    END
$$

CALL remove_emp_by_id(25);