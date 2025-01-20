-- 44. Write a program to accept a year and check whether it is leap year or not . If it is leap year then display how many sundays present in that year
DECLARE
    Y NUMBER(4) := &Y;
    startD DATE;
    endD DATE;
BEGIN
    IF MOD(Y, 4) = 0 AND MOD(Y,100)!=0 OR MOD(Y, 400) = 0 THEN
        DBMS_OUTPUT.PUT_LINE('The year is leap');

        startD := TO_DATE('01-JAN-' || Y, 'DD-MM-YYYY');
        endD := TO_DATE('31-DEC-' || Y, 'DD-MM-YYYY');

        WHILE startD <= endD LOOP
            IF (TO_CHAR(startD, 'D') = 1) THEN
                DBMS_OUTPUT.PUT_LINE(TO_CHAR(startD, 'DAY') || ' ' || startD);
            END IF;
            startD := startD + 1;
        END LOOP;
    ELSE
        DBMS_OUTPUT.PUT_LINE('The year is not leap');
    END IF;
END;
/