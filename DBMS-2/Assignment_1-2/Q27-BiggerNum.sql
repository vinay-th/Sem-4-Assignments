-- 27.Write a program accept the value of A,B&C display which is greater
DECLARE
    A NUMBER(4):=&A;
    B NUMBER(4):=&B;
    C NUMBER(4):=&C;
BEGIN
    IF (A > B AND A > C) THEN
        DBMS_OUTPUT.PUT_LINE('A IS BIGGER');
    ELSIF (B > A AND B > C) THEN
        DBMS_OUTPUT.PUT_LINE('B IS BIGGER');
    ELSE
        DBMS_OUTPUT.PUT_LINE('C IS BIGGER');
    END IF;
END;
/