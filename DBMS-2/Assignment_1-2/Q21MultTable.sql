-- 21.Write a program to accept a number and print the multiplication tables upto soo (i think they meant num to num + 1)

-- ex user enter 5 tables from 5 to 10 printed

DECLARE
    num NUMBER := &num;
    res NUMBER;
BEGIN
    FOR i IN num .. num + 5 LOOP
        FOR j IN 1 .. 10 LOOP
            res := i * j;
            DBMS_OUTPUT.PUT_LINE(i || ' * ' || j || ' = ' || res);
        END LOOP;

        DBMS_OUTPUT.PUT_LINE('-----------------------');
    END LOOP;
END;
/