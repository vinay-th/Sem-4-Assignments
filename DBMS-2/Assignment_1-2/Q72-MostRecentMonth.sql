-- 72.WAP to accept the 3 dates and display the most recently month among 3 dates
DECLARE
    D1 DATE:='&D1';
    D2 DATE:='&D2';
    D3 DATE:='&D3';
    M1 NUMBER;
    M2 NUMBER;
    M3 NUMBER;
BEGIN
    M1:=TO_NUMBER(TO_CHAR(D1,'MM'));
    M2:=TO_NUMBER(TO_CHAR(D2,'MM'));
    M3:=TO_NUMBER(TO_CHAR(D3,'MM'));
    IF M1>M2 AND M1>M3 THEN
        DBMS_OUTPUT.PUT_LINE('MOST RECENT MONTH IS '||TO_CHAR(D1,'MONTH'));
    ELSIF M2>M1 AND M2>M3 THEN
        DBMS_OUTPUT.PUT_LINE('MOST RECENT MONTH IS '||TO_CHAR(D2,'MONTH'));
    ELSE
        DBMS_OUTPUT.PUT_LINE('MOST RECENT MONTH IS '||TO_CHAR(D3,'MONTH'));
    END IF;
END;