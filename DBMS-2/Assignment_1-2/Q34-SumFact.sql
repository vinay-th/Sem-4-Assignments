-- 34. WAP to calculate the sum of 1!+2!+......+n!
DECLARE
    n NUMBER := &n;
    FACT NUMBER;
    SUM_FACT NUMBER := 0;
BEGIN
    FOR i IN 1 .. n LOOP
        FACT := 1; -- reset FACT to 1

        FOR j IN 1 .. i LOOP
            FACT := FACT * j; -- get fact of the number
        END LOOP;

        SUM_FACT := SUM_FACT + FACT; -- ADD the fact to sum
    END LOOP;

     DBMS_OUTPUT.PUT_LINE('Sum of factorials from 1! to ' || n || '! is: ' || SUM_FACT);
END;
/