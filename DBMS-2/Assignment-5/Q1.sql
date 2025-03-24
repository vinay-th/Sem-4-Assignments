-- 1. Create a function to calculate reverse of a number. 
CREATE OR REPLACE FUNCTION reverseNum(num NUMBER) RETURN NUMBER IS
    rev_num NUMBER := 0;
    temp NUMBER := num;
BEGIN
    WHILE temp > 0 LOOP
        rev_num := rev_num * 10 + MOD(temp, 10);
        temp := TRUNC(temp / 10);
    END LOOP;

    RETURN rev_num;
END reverseNum;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE('Original num: 123 Reversed num: ' || reverseNum(123));
END;
/