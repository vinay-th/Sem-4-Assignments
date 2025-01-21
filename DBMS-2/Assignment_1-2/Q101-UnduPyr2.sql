-- 101. Write a program to print the following series
-- 5 4 3 2 1
-- 4 3 2 1
-- 3 2 1
-- 2 1
-- 1
BEGIN
    FOR i IN REVERSE 1 .. 5 LOOP
        FOR j IN REVERSE 1..i LOOP
            DBMS_OUTPUT.PUT(j || ' ');
        END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END LOOP;
END;