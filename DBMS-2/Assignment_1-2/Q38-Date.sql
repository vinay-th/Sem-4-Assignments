-- 38. Write a program to display the months between two dates of a year
DECLARE
    D DATE:='&D'; -- IN INPUT PASS 01-03-2024
    D1 DATE:='&D1'; -- IN INPUT PASS 01-07-2024
BEGIN
    WHILE D < D1 LOOP
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(D,'MONTH')); -- SIMPLY PRINT THE MONTH
        D:=ADD_MONTHS(D,1);
    END LOOP;
END;
/
