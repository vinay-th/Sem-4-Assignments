-- 5. Write a program for multiplication table
DECLARE
    -- declaring 3 vars num i and res
    num NUMBER := 5;
    i NUMBER := 1;
    res NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('The table of 5 is : ');

    -- loop that will take i to 10 for multiplication
    WHILE i <= 10 LOOP 
        -- multiplying num with i i.e 5 * 1
        res := num * i;

        -- for concatenation of string we use || in plsql
        DBMS_OUTPUT.PUT_LINE(num || ' * ' || i || ' = ' || res);

        --increment of si
        i := i + 1;
    END LOOP;

END;
/