-- 63.WAP to accept the date and print all the weekdays along with the given date
DECLARE
    D DATE:='&D';
    V VARCHAR2(20);
BEGIN
    FOR I IN 1..7 LOOP
        V:=TO_CHAR(D,'DAY')||D;
        DBMS_OUTPUT.PUT_LINE(V);
        D:=D+1;
    END LOOP;
END;
/
