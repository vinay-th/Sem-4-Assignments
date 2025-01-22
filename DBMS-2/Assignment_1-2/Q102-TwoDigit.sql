-- 102. WAP to accept 2 nos and find the sum and product of the nos and print the output
DECLARE
    a NUMBER := &a;
    b NUMBER := &b;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Sum: ' || (a + b));
    DBMS_OUTPUT.PUT_LINE('Product: ' || (a * b));
END;