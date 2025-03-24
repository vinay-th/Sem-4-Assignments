-- 13. Create a function to find a factorial of a number.
CREATE OR REPLACE FUNCTION factorial(n NUMBER) RETURN NUMBER IS
res NUMBER := 1;
BEGIN
    IF n = 0 OR n = 1 THEN
        RETURN 1;
    ELSE
        FOR i IN 2..n LOOP
            res := res * i;
        END LOOP;
        RETURN res;
    END IF; 
END factorial;
/

BEGIN
    DBMS_OUTPUT.PUT_LINE('FACTORIAL OF 5: ' || factorial(5));
END;
/