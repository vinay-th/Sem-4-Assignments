-- 4. Create a function to find minimum salary of an employee.
CREATE OR REPLACE FUNCTION minSalary RETURN NUMBER IS
    minSal NUMBER;
BEGIN
    SELECT MIN(EMP_SALARY) INTO minSal FROM EMPLOYEE;

    RETURN minSal; 
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE(minSalary);
END;
/