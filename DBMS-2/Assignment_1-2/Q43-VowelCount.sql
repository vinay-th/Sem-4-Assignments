-- 43. WAP to accept a string and count how many vowels present in the string
DECLARE
    str VARCHAR2(15) := '&str';
    ch CHAR;
    vowel_count NUMBER := 0;
BEGIN
    FOR i IN 1 .. LENGTH(str) LOOP
        ch := SUBSTR(str, i, 1);
        IF UPPER(ch) IN ('A','E','I','O','U') THEN
            vowel_count := vowel_count + 1;
        END IF;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('In the string: "' || str || '" there are: ' || vowel_count || ' vowels');
END;
/