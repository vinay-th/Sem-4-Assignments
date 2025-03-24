-- 1. Create a procedure to find maximum no from 3 no’s. Numbers should be entered by the user at run time.

-- SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE Find_Max_Num(
    num1 IN NUMBER,
    num2 IN NUMBER,
    num3 IN NUMBER
) AS 
    max_num NUMBER;

BEGIN
    max_num := GREATEST(num1, num2, num3);

    DBMS_OUTPUT.PUT_LINE('The maximum number is: ' || max_num);
END Find_Max_Num;
/

DECLARE 
    a NUMBER;
    b NUMBER;
    c NUMBER;
BEGIN
    -- Accepting user inputs
    a := &Enter_First_Number;
    b := &Enter_Second_Number;
    c := &Enter_Third_Number;

    -- Calling the procedure
    Find_Max_Num(a, b, c);
END;
/