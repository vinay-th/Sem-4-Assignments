-- 92. Write a program to print the following series
--  1 1 1 1 1
--  2 2 2 2 2
--  3 3 3 3 3
--  4 4 4 4 4
--  5 5 5 5 5

BEGIN
    FOR I IN 1..5 LOOP
        FOR J IN 1..5 LOOP
            DBMS_OUTPUT.PUT(I||' ');
        END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END LOOP;
END;