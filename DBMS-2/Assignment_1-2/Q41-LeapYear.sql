-- 41. Write a program to accept a year and check whether it is leap year or not
DECLARE
Y NUMBER:=&Y;
R NUMBER;
    BEGIN
    IF MOD(Y,4)=0 AND MOD(Y,100)!=0 OR MOD(Y,400)=0 THEN
        DBMS_OUTPUT.PUT_LINE(Y ||' IS A LEAP YEAR');
    ELSE
        DBMS_OUTPUT.PUT_LINE(Y ||' IS NOT A LEAP YEAR');
    END IF;
END;
/