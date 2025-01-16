-- 2. Write a program to print the numbers from 1 to 100.

DECLARE

I NUMBER := 1;

BEGIN

    WHILE I <= 100 LOOP
        DBMS_OUTPUT.PUT_LINE(I);
        I := I + 1;
    END LOOP;
    
END;
/