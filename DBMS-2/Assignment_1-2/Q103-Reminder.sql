-- 103. WAP to accept 2 nos and find the remainder when the first number is divided by sencond(dont use mod function)
DECLARE
    a NUMBER := &a;
    b NUMBER := &b;
    remi NUMBER := a;
BEGIN
    WHILE remi >= b LOOP
        remi := remi - b;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Remainder: ' || remi);
END;