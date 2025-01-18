-- 14. Write a program to generate all prime numbers between 1 to 100

-- here i used a simple for loop that goes from 2 till n/2 
-- i used a boolean data type of isPrime 
-- it is very easy just go through the syntax carefully

DECLARE
    num NUMBER := 2;

    isPrime BOOLEAN;
BEGIN 
    WHILE num <= 100 LOOP
        isPrime := TRUE;
        FOR temp in 2 .. TRUNC(num / 2) LOOP
            isPrime := TRUE;
            IF(MOD(num, temp) = 0) THEN
                isPrime := FALSE;
                EXIT;
            END IF;
        END LOOP;
        IF(isPrime = TRUE) THEN
            DBMS_OUTPUT.PUT_LINE(num);
        END IF;

        num := num + 1;
    END LOOP;
END;
/