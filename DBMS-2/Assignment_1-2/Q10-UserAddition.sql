-- 10. Write a program to accept a number and find the sum of the digits
    
    -- simply take values from user and add them in res var
DECLARE 
    a NUMBER := &a;
    b NUMBER := &b;
    res NUMBER;
BEGIN 
    res := a + b;
    DBMS_OUTPUT.PUT_LINE(a || ' + ' || b || ' = ' || res);
END;
/