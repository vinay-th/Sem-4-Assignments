-- 20. Write a program to aceept a number and display it in the Octal format

-- this is same as binary just instead of base 2 it is base 8
-- so mod and div by 8

DECLARE
    num NUMBER := &num;
    reminder NUMBER := 0;
    octalNum VARCHAR2(100) := '';
BEGIN 
    WHILE num > 0 LOOP
        reminder := MOD(num, 8);
        octalNum := reminder || octalNum;
        num := TRUNC(num / 8);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('The number ' || num || ' in octal is:  ' || octalNum);
END;
/