-- 10. Create a procedure to find a employee whose id is 1002.

CREATE OR REPLACE PROCEDURE Find_Employee_1002 AS
    v_name employees.emp_name%TYPE;
    v_salary employees.salary%TYPE;
BEGIN
    -- Fetch employee details where emp_id = 1002
    SELECT emp_name,  salary
    INTO v_name, v_salary
    FROM employees
    WHERE emp_id = 1002;

    -- Display employee details
    DBMS_OUTPUT.PUT_LINE('Employee ID: 1002');
    DBMS_OUTPUT.PUT_LINE('Name: ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found with ID 1002.');
END Find_Employee_1002;
/

-- Calling the procedure
BEGIN
    Find_Employee_1002;
END;
/