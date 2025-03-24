-- 5. Create a function to find average salary of an employee.
CREATE OR REPLACE FUNCTION avgSalary RETURN NUMBER IS
    avgSal NUMBER;
BEGIN
    SELECT AVG(EMP_SALARY) INTO avgSal FROM EMPLOYEE;

    RETURN avgSal; 
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE(avgSalary);
END;
/