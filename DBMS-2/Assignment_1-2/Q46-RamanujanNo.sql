-- 46.WAP to accept A,B,C & D check whether it is Ramanujan number or not
DECLARE
    A NUMBER:=&A;
    B NUMBER:=&B;
    C NUMBER:=&C;
    D NUMBER:=&D;
BEGIN
    IF
        POWER(A,3)+POWER(B,3)=POWER(C,3)+POWER(D,3) THEN
        DBMS_OUTPUT.PUT_LINE('IT IS RAMANUJAN NO');
    ELSE
        DBMS_OUTPUT.PUT_LINE('IT IS NOT RAMANUJAN NO');
    END IF;
END;
/