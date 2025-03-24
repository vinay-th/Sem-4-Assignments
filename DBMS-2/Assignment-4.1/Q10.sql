-- 10. Create an Exception, if Value not found in employee table.

DECLARE 
    emp_name EMPLOYEE.EMP_NAME%TYPE;
BEGIN
    SELECT EMP_NAME INTO emp_name FROM EMPLOYEE WHERE  EMP_ID = 0;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('KUCH NA MILA');
END;
/