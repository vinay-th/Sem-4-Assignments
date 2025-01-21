-- 100. Write a program to print the following series
--  1 2 3 4 5
--  2 3 4 5
--  3 4 5
--  4 5
--  5
BEGIN
    FOR i IN 1..5 LOOP
        FOR j IN i..5 LOOP
            DBMS_OUTPUT.PUT(j || ' ');
        END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END LOOP;
END;