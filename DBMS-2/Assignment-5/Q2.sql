-- 2. Create a function to find total no of employee available in records.

CREATE OR REPLACE FUNCTION employeeCount RETURN NUMBER IS
    emp_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO emp_count FROM EMPLOYEE;

    RETURN emp_count;
END employeeCount;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE(employeeCount);
END;
/