-- 94. Write a program to print the following series
--  5 4 3 2 1
--  5 4 3 2
--  5 4 3
--  5 4
--  5
BEGIN
    FOR i IN 1..5 LOOP
        FOR j IN REVERSE i .. 5 LOOP
            DBMS_OUTPUT.PUT(j || ' ');
        END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END LOOP;
END;
/