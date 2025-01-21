-- 90. Write a program to print the following series
-- 1
-- 2 1
-- 3 2 1
-- 4 3 2 1
-- 5 4 3 2 1
BEGIN
    FOR I IN 1..5 LOOP
        FOR J IN REVERSE 1..I LOOP
            DBMS_OUTPUT.PUT(J||' ');
        END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END LOOP;
END;
/