-- 89.Write a program to print the following series
-- 1
-- 1 2
-- 1 2 3
-- 1 2 3 4
-- 1 2 3 4 5
BEGIN
    FOR I IN 1..5 LOOP
        FOR J IN 1..I LOOP
            DBMS_OUTPUT.PUT(J||' ');
        END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END LOOP;
END;