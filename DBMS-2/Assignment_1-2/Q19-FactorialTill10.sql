-- 19.Find the factorials of numbers from 1 to 10

-- run a for loop from i = 1 to 10
-- inside the loop run another for loop from j = 1 to the outer loop i
-- multiply the fact to current value with i so we'll get factorial

-- ex: fac(5) = 1*2*3*4*5 = 120

DECLARE
    fact NUMBER := 1;
BEGIN
    FOR i IN 1 .. 10 LOOP
        fact := 1; -- reinitialize the value of fact

        FOR j IN 1 .. i LOOP -- inner loop
            fact := fact * j;
        END LOOP;

        DBMS_OUTPUT.PUT_LINE('The factorial of ' || i || ' is : ' || fact);
    END LOOP;
END;
/