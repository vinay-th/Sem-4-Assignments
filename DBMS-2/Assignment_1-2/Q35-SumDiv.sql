-- 35. WAP to calculate the sum of 1+1/2+1/3+......+1/n
DECLARE
    n NUMBER := &n;
    res NUMBER;
    s NUMBER(10,2) := 0;
BEGIN
    FOR i IN 1 .. n LOOP
        res := 1/i;
        s := s + res;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('The SUM till ' || n || ' is ' || s);
END;
/