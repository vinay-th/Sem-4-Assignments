-- 4. Write a program to print the odd numbers from 1 to 100

DECLARE

    i NUMBER := 1;

BEGIN
    WHILE i <= 100 LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 2;
    END LOOP;
END;
/