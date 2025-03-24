-- 3. Create a function to find maximum salary of an employee.
CREATE OR REPLACE FUNCTION maxSalary RETURN NUMBER IS
    maxSal NUMBER;
BEGIN
    SELECT MAX(EMP_SALARY) INTO maxSal FROM EMPLOYEE;

    RETURN maxSal; 
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE(maxSalary);
END;
/