-- 28. Write a program accept a string and check whether it is palindrome or not
DECLARE
S VARCHAR2(10):='&S';
L VARCHAR2(20);
TEMP VARCHAR2(10);
BEGIN
    FOR I IN REVERSE 1..LENGTH(S) LOOP
        L:=SUBSTR(S,I,1);
        TEMP:=TEMP||''||L;
    END LOOP;
    
    IF TEMP=S THEN
        DBMS_OUTPUT.PUT_LINE(TEMP ||''|| ' IS PALINDROME');
    ELSE
        DBMS_OUTPUT.PUT_LINE(TEMP ||''|| ' IS NOT PALINDROME');
    END IF;
END;
/