-- 17. Write a program to aceept a number and print it in binary format

-- this is very simple just get rem of every digit after div it by 2
-- append this to the pre existing string which makes the binary string

DECLARE
    num NUMBER := &num;
    reminder NUMBER := 0;
    binaryNum VARCHAR2(100) := '';
BEGIN 
    WHILE num > 0 LOOP
        reminder := MOD(num, 2);
        binaryNum := reminder || binaryNum;
        num := TRUNC(num / 2);
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('The number ' || num || ' in binary is:  ' || binaryNum);
END;
/