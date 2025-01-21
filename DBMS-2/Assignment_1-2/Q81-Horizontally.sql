-- 81. Write a program to generate sequence of numbers horizontally from 1 to 25
DECLARE
    i NUMBER := 1;
BEGIN
    WHILE i <= 25 LOOP
        DBMS_OUTPUT.PUT_LINE(i || ' ');
        i := i + 1;
    END LOOP;
END;