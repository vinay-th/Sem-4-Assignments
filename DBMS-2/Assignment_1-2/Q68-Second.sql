-- 68.Write a program to accep the time in HH & MIN format and find the total senconds
DECLARE
    H NUMBER:=&HOUR;
    M NUMBER:=&MINUTE;
    S NUMBER(10):=0;
BEGIN
    S:=(H*60*60)+(M*60);
    DBMS_OUTPUT.PUT_LINE(H||' HOURS '||M||' MINUTES '||'IS'||S||' SECONDS');
END;
/

