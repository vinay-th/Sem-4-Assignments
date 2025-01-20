-- 62.Ente the no of days and find out the no of years and no of days and months
DECLARE
    D NUMBER:=&D;
    Y NUMBER;
    M NUMBER;
BEGIN
    Y:=TRUNC(D/365);
    M:=TRUNC(MOD(D,365)/30);
    D:=MOD(MOD(D,365),30);
    DBMS_OUTPUT.PUT_LINE(Y||' YEARS '||M||' MONTHS '||D||' DAYS');
END;
/