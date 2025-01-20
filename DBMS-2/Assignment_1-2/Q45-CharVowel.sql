-- 45. Write a program to accept a char and check it is vowel or consonant
DECLARE
    C CHAR:='&C';
BEGIN
    IF UPPER(C) IN ('A', 'E', 'I', 'O', 'U') THEN
        DBMS_OUTPUT.PUT_LINE('VOWEL');
    ELSE
        DBMS_OUTPUT.PUT_LINE('CONSONANT');
    END IF;
END;
/