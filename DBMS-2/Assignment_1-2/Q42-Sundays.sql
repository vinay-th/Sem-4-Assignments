-- 42.Write a program to accept a year and display all sundays along with the date
DECLARE
    Y NUMBER(4) := &Y;
    startD DATE;
    endD DATE;
    I NUMBER(2) := 1;
BEGIN
    startD := TO_DATE('01-JAN-' || Y, 'DD-MON-YYYY');
    endD := TO_DATE('31-DEC-' || Y, 'DD-MON-YYYY');

    WHILE startD <= endD LOOP
        IF (TO_CHAR(startD,'D')=1) THEN
            DBMS_OUTPUT.PUT_LINE(startD || TO_CHAR(startD,'DAY'));
        END IF;
        startD := startD + 1;
    END LOOP;
END;
/