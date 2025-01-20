-- 50.WAP to accept a string and print it in reverse order
DECLARE
    STR VARCHAR2(100):='&STR';
    STR1 VARCHAR2(100);
    N NUMBER(5);
    CH CHAR;
BEGIN
    N:=LENGTH(STR);
    FOR I IN 1..N LOOP
        CH:=SUBSTR(STR,I,1);
        STR1:=CH||STR1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(STR1);
END;
/