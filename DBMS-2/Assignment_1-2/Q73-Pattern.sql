-- 73.Accept a string and print in the following format
-- O
-- OR
-- ORA
-- ORAC
-- ORACL
-- ORACLE

DECLARE
    S VARCHAR2(20):='ORACLE';
    V VARCHAR2(20);
BEGIN
    FOR I IN 1..LENGTH(S) LOOP
        V:=SUBSTR(S,1,I);
        DBMS_OUTPUT.PUT_LINE(V);
    END LOOP;
END;