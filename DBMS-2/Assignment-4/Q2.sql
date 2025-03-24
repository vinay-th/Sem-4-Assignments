-- 2. Create a procedure to find the square and cube of a number. Only 1 input should be taken as IN and OUT.

CREATE OR REPLACE PROCEDURE Find_Sqr_Cbu(
    num IN OUT NUMBER
) AS 
    original NUMBER := num;
BEGIN
    num := original * original;

    DBMS_OUTPUT.PUT_LINE('The square of ' || original || ' is ' || num);

    num := num * original;
    DBMS_OUTPUT.PUT_LINE('The cube of ' || original || ' is ' || num);
END Find_Sqr_Cbu;
/

DECLARE 
    n NUMBER;
BEGIN
    n := &Enter_num;

    Find_Sqr_Cbu(n);
END;
/