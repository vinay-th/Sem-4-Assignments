-- 49.WAP to accept a number and print its multiplication table horinzontally
DECLARE
J NUMBER:=&J;
V VARCHAR2(1000);
K NUMBER(3);
BEGIN
    FOR I IN 1..10 LOOP
        K:=J*I;
        V:=V||J||'*'||I||'='||K||' ';
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(V);
END;
/