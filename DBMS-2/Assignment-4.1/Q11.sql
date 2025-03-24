-- 11. Create user defined an Exception and raise it: Find maximum from 3 no.

DECLARE
    num1 NUMBER := 10;
    num2 NUMBER := 10;
    num3 NUMBER := 10;

    maxi NUMBER;

    no_unique_max EXCEPTION;
BEGIN
    IF(num1 > num2 AND num1 > num3) THEN
        maxi := num1;
    ELSIF (num2 > num1 AND num2 > num3) THEN 
        maxi := num2;
    ELSIF (num3 > num1 AND num3 > num2) THEN 
        maxi := num3;
    ELSE
        RAISE no_unique_max;
    END IF;

EXCEPTION
    WHEN no_unique_max THEN
        DBMS_OUTPUT.PUT_LINE('KUCH TO SAME SAME THA');
END;
/