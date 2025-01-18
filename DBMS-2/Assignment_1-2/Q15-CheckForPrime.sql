-- 15. Write a program to aceept a number and check whether it is prime number or not

-- just like last question
DECLARE
    num NUMBER := &num; 
    isPrime BOOLEAN := TRUE;
BEGIN 
    FOR i IN 2 .. TRUNC(num / 2) LOOP
        IF(MOD(num, i) = 0) THEN
            isPrime := FALSE;
            EXIT;
        END IF;
    END LOOP;

    IF(isPrime) THEN
        DBMS_OUTPUT.PUT_LINE('The number: ' || num || ' is a prime number');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The number: ' || num || ' is not a prime number');
    END IF;
END;
/