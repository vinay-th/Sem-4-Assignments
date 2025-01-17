-- 9. Write a program to accept a number and find how many digits it contain
DECLARE
    N NUMBER(5) := &N;
    COUNTER NUMBER := 0;
    REMINDER NUMBER(2) := 0;
BEGIN
    WHILE N != 0
    LOOP
        REMINDER := MOD(N,10);
        COUNTER := COUNTER+1;
        N := N / 10;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('NUMBER OF DIGITS OF GIVEN NUMBER IS '||COUNTER);
END;
/