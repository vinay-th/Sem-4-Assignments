-- 55.Writ a program to generate the following series
-- 53 53 53 53 53
-- 43 43 43 43
-- 33 33 33
-- 23 23
-- 13
DECLARE
    str VARCHAR2(20) := '';
BEGIN
    FOR i IN REVERSE 1 .. 5 LOOP
        FOR j IN 1 .. i LOOP
            str := str || (i || 3 || ' ');
        END LOOP;
        DBMS_OUTPUT.PUT_LINE(str);
        str := '';
    END LOOP;
END;
/