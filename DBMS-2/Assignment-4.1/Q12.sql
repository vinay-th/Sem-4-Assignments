-- 12. Create user defined an Exception and raise it: Calculate 5% increment in salary of an
-- employee, if salary is greater than 25000, raise an exception “Salary is Out of the Limit”

DECLARE
    v_salary NUMBER := 27000;  -- Change this value to test different cases
    v_incremented_salary NUMBER;
    
    -- User-defined exception
    e_salary_out_of_limit EXCEPTION;

BEGIN
    -- Check if salary is greater than 25000
    IF v_salary > 25000 THEN
        -- Raise the user-defined exception
        RAISE e_salary_out_of_limit;
    ELSE
        -- Calculate 5% increment
        v_incremented_salary := v_salary + (v_salary * 0.05);
        DBMS_OUTPUT.PUT_LINE('New Salary after 5% increment: ' || v_incremented_salary);
    END IF;

EXCEPTION
    WHEN e_salary_out_of_limit THEN
        DBMS_OUTPUT.PUT_LINE('Exception: Salary is Out of the Limit');
END;
/
