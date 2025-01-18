-- 18. Write a program to accept a number and find the factorial of the number

-- run a for loop from 1 to the number user entered
-- multiply the fact to current value with i so we'll get factorial

-- ex: fac(5) = 1*2*3*4*5 = 120

DECLARE
    num NUMBER := &num;
    fact NUMBER := 1;
BEGIN
    FOR i IN 1 .. num LOOP
        fact := fact * i;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('The factorial of ' || num || ' is : ' || fact);
END;
/