-- 95. Write a program to print the following series
--  5 5 5 5 5
--  4 4 4 4
--  3 3 3
--  2 2
--  1
BEGIN
    FOR i IN REVERSE 1 .. 5 LOOP
        FOR j IN REVERSE 1..i LOOP
            DBMS_OUTPUT.PUT(i || ' ');
        END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END LOOP;
END;