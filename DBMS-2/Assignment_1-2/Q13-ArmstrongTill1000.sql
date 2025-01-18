-- 13. Write a porgram to generate all the Armstrong numbers from 1 to 1000

-- run a simple loop for 1 to 1000 and for each armstrong print it
DECLARE
    i NUMBER := 1;
    temp NUMBER := i;
    reminder NUMBER := 0;
    res NUMBER := 0;
BEGIN 
    WHILE i <= 1000 LOOP
        temp := i;
        res := 0;
        WHILE temp != 0 LOOP
            reminder := MOD(temp, 10);
            res := res + (reminder * reminder * reminder);

            temp := TRUNC(temp / 10);
        END LOOP;
        IF (i = res) THEN
            DBMS_OUTPUT.PUT_LINE(i);
        END IF;

        i := i + 1;
    END LOOP;
END;
/