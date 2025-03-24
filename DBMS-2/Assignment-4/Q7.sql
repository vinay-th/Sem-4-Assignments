-- 7. Create a procedure to perform all the arithmatic operation on 2 or 3 numbers.

CREATE OR REPLACE PROCEDURE Arithmetic(
    num1 IN INT,
    num2 IN INT
) AS
BEGIN
    DBMS_OUTPUT.PUT_LINE('ADD: ' || (num1 + num2));
    DBMS_OUTPUT.PUT_LINE('SUB: ' || (num1 - num2));
    DBMS_OUTPUT.PUT_LINE('MUL: ' || (num1 * num2));
    DBMS_OUTPUT.PUT_LINE('DIV: ' || (num1 / num2));
END Arithmetic;
/

BEGIN
    Arithmetic(10, 20);
    Arithmetic(50, 10);
END;
/