-- 54.WAP to accept the cost price and selling price of an item and find the loss or profit
DECLARE
    CP NUMBER(9,2):=&CP;
    SP NUMBER(9,2):=&SP;
    amount NUMBER(7,2);
BEGIN
    IF CP < SP THEN
        amount:=SP-CP;
        DBMS_OUTPUT.PUT_LINE('PROFIT MADE OF '||amount);
    ELSE
        amount:=CP-SP;
        DBMS_OUTPUT.PUT_LINE('LOSS MADE OF '||amount);
    END IF;
END;
/