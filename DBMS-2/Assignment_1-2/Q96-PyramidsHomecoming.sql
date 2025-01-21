-- 96. Write a program to print the following series
--  1
--  2 2
--  3 3 3
--  4 4 4 4
--  5 5 5 5 5
BEGIN
    FOR i IN 1..5 LOOP
        FOR j IN 1..i LOOP
            DBMS_OUTPUT.PUT(i || ' ');
        END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END LOOP;
END;