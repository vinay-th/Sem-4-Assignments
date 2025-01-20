-- 64.WAP while purchasing certain items,discount of each is as follows
-- i) If qty purchased > 1000 discount is 20%
-- ii) If the qty and price per item are i/p then calculate the expenditure
DECLARE
    QTY NUMBER(5):=&QTY;
    UP NUMBER(6,2):=&UP;
    DIS NUMBER(6,2):=0;
    TOTAL NUMBER(10,2);
    BILL NUMBER(10,2);
BEGIN
    BILL:=QTY*UP;
    IF BILL > 1000 THEN
        DIS:=BILL*20/1000;
    END IF;
    TOTAL:=BILL-DIS;
    DBMS_OUTPUT.PUT_LINE('THE TOTAL AMOUNT IS '||TOTAL);
END;
/