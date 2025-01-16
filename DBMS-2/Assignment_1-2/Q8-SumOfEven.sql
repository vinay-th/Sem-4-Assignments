-- 8.Write a program to find the sum of all even numbers from 1 to 100

DECLARE
    i NUMBER := 2;
    res NUMBER := 0;
BEGIN
    WHILE i <= 100 LOOP 
        res := res + i;
        i := i + 2;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('The sum of all even digits from 1-100 is: ' || res);
END;
/