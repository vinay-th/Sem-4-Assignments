-- 11. Write a program to accept a number and print it in reverse order

-- write a simple logic of reversing a number 
-- keep in mind when using NUMBER data type we can't use % or /
-- we have to use TRUC for division (it removes the fractional part after .) and MOD for modulo

-- because we are using NUMBER not decimals
DECLARE
    n NUMBER := &n;
    reminder NUMBER := 0;
    rev NUMBER := 0;
    temp NUMBER := n;
BEGIN 
    WHILE temp != 0 LOOP
        reminder := MOD(temp, 10);
        rev := (rev * 10) + reminder;

        temp := TRUNC(temp / 10); 
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('Reverse of num ' || n || ' is ' || rev);
END;
/