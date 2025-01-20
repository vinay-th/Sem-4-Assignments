-- 37. WAP to calculate the sum of 1/1!+2/2!+......+n/n!
DECLARE
    n NUMBER := &n;
    fact NUMBER;
    res NUMBER;
    s NUMBER(10,2) := 0;
BEGIN
    FOR i IN 1 .. n LOOP -- WE SIMPLY NEED SUM OF i/i! TILL n/n! 
        fact := 1;

        FOR j IN 1 .. i LOOP
            fact := fact * j;
        END LOOP;
        
        res := i / fact; 
        s := s + res;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('The SUM till ' || n || ' is ' || s);
END;
/