-- 98. Write a program to print the following series
--  *
--  * *
--  * * *
--  * * * *
--  * * * * *
BEGIN
    FOR i IN 1..6 LOOP
        FOR j IN 1..i LOOP
            DBMS_OUTPUT.PUT('* ');
        END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END LOOP;
END;