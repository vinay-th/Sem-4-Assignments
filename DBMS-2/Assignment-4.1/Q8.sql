-- 8. Create an Exception, if many rows are fetching from the table.

DECLARE
    ID EMPLOYEE.EMP_ID%TYPE;
BEGIN
    SELECT EMP_ID INTO ID FROM EMPLOYEE WHERE EMP_SALARY = 45000;

EXCEPTION
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('TOO MANY ROWS SELECTED');
END;
/