-- 58.WAP to accept a sentence and count the no of chars in that sentence
DECLARE
STR VARCHAR2(100):='&STR';
NO NUMBER(5):=0;
CH CHAR;
BEGIN
    FOR i IN 1 .. LENGTH(STR) LOOP
        CH := SUBSTR(STR, i, 1);
        IF(CH != ' ') THEN
            NO := NO + 1;
        END IF;
    END LOOP; 
    DBMS_OUTPUT.PUT_LINE('NO OF CHAR IS '||NO);
END;
/