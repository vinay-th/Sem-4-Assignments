-- 6. Create a function to find total salary of all employee.
CREATE OR REPLACE FUNCTION totalSalary RETURN NUMBER IS
    totalSal NUMBER;
BEGIN
    SELECT SUM(EMP_SALARY) INTO totalSal FROM EMPLOYEE;

    RETURN totalSal; 
END;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE(totalSalary);
END;
/