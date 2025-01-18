-- 29.Write a program aceepts the value of A,B and swap the nos and print the values
DECLARE
    A NUMBER := &A;
    B NUMBER := &B;
    TEMP NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('BEFORE SWAP A: ' || A || ' B: ' || B);
    
    TEMP := A;
    A := B;
    B := TEMP;
    
    DBMS_OUTPUT.PUT_LINE('AFTER SWAP A: ' || A || ' B: ' || B);
END;
/