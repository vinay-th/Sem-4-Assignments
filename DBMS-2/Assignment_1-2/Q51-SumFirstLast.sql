-- 51.Write a program to accept a number and find out the sum of first and last digits
DECLARE
    A NUMBER(4):=&A;
    B NUMBER(5):=0;
    C NUMBER(5):=0;
    S NUMBER(5);
BEGIN
    IF A>9 THEN
        C:=SUBSTR(A,1,1);
        B:=SUBSTR(A,LENGTH(A),1);
        S:=B+C;
    ELSE
        S:=A;
    END IF;
    DBMS_OUTPUT.PUT_LINE('SUM OF FIRST AND LAST DIGIT IS '||S);
END;
/