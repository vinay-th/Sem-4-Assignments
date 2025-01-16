-- 6.write a program to find the sum of numbers from 1 to 100

DECLARE
    i NUMBER := 1;
    res NUMBER := 0;
BEGIN
    -- writing a simple loop that goes to 100
    WHILE i <= 100 LOOP
        -- simple logic of adding each to each loop iteration
        res := res + i;
        i := i + 1;
    END LOOP;

    -- never forget to use '' instead of ""
    DBMS_OUTPUT.PUT_LINE('The sum of 1-100 is : ' || res);

END;
/