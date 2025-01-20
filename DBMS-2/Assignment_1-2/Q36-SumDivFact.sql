-- 36. WAP to calculate the sum of 1/1!+1/2!+.....+1/n!
DECLARE
    n NUMBER := &n;
    fact NUMBER;
    res NUMBER;
    s NUMBER(10,2) := 0;
BEGIN
    FOR i IN 1 .. n LOOP -- WE SIMPLY NEED SUM OF 1/i! TILL 1/n!
        fact := 1; -- RESET
        FOR j IN 1 .. i LOOP
            fact := fact * j;
        END LOOP;

        res := 1 / fact; 
        s := s + res;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('The SUM till ' || n || ' is ' || s);
END;
/