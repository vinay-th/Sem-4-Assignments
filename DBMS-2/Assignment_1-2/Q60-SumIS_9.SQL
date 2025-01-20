-- 60.WAP to display all the nos whose sum of digits is 9 from 1 to 9999
DECLARE
    N NUMBER;
    M NUMBER;
    S NUMBER:=0;
BEGIN
    FOR I IN 1..999 LOOP
        N:=I;
        WHILE N > 0 LOOP
            M:=MOD(N,10);
            S:=S+M;
            N:=TRUNC(N/10);
        END LOOP;
        IF S=9 THEN
        DBMS_OUTPUT.PUT_LINE(I||' ');
        END IF;
        S:=0;
    END LOOP;
END;
/