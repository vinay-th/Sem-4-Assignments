-- 30. Write a program to accept the values of A , B and swap the numbers and print the values without using third variable
DECLARE
    A NUMBER := &A;
    B NUMBER := &B;
BEGIN
    DBMS_OUTPUT.PUT_LINE('BEFORE SWAP A: ' || A || ' B: ' || B);

    A := A + B;
    B := A - B;
    A := A - B;
    
    DBMS_OUTPUT.PUT_LINE('AFTER SWAP A: ' || A || ' B: ' || B);
END;
/