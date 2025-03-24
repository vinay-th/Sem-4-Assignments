-- 9. Create an Exception, if one numbe ris divide by zero. 
DECLARE 
    num1 NUMBER;
    num2 NUMBER;
    res NUMBER;
BEGIN
    num1 := &ENTER_NUM1;
    num2 := &ENTER_NUM2;

    res := num1 / num2;

    DBMS_OUTPUT.PUT_LINE(num1 || ' / ' || num2 || ' = ' || res);

EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('TRIED TO DIVIDE BY ZERO');
END;
/