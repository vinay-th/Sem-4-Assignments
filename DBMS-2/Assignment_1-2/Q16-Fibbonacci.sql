-- 16. Write a program to display the fibonacci series from 1 to 10

-- USE A SIMPLE FOR LOOP
-- then use 2 nums and a next num
-- and change their values while printing num1
DECLARE
    num1 NUMBER := 0;
    num2 NUMBER := 1;
    nextNum NUMBER;
BEGIN
    FOR i IN 0 .. 10 LOOP
        DBMS_OUTPUT.PUT_LINE(num1);

        nextNum := num1 + num2;
        num1 := num2;
        num2 := nextNum;
    
    END LOOP;
END;
/