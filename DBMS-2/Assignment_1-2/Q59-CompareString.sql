-- 59.WAP to accept two strings and display the large one among those
DECLARE
    STR1 VARCHAR2(100):='&STR1';
    STR2 VARCHAR2(100):='&STR2';
BEGIN
    IF LENGTH(STR1) > LENGTH(STR2) THEN
        DBMS_OUTPUT.PUT_LINE(STR1 ||' IS GREATER');
    ELSIF LENGTH(STR1) < LENGTH(STR2) THEN
        DBMS_OUTPUT.PUT_LINE(STR2 ||' IS GREATER');
    ELSE
        DBMS_OUTPUT.PUT_LINE('BOTH STRINGS ARE EQUAL');
    END IF;
END;
/