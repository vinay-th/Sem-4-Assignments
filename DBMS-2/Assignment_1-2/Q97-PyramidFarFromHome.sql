-- 97. Write a program to print the following series
--  1
--  0 1
--  1 0 1
--  0 1 0 1
--  1 0 1 0 1
BEGIN
    FOR i IN 1..5 LOOP
        FOR j IN 1..i LOOP
            DBMS_OUTPUT.PUT(MOD(j, 2) || ' ');
        END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END LOOP;
END;