-- 47. WAP to accept the CMR & LMR & find out the total bill amount
-- i)0-100 units Rs.50 per unit 
-- ii)101-200n units Rs.o.25 per unit
-- iii)>200 units Rs.1.25 per unit
DECLARE
    LMR NUMBER(5):=&LMR;
    CMR NUMBER(5):=&CMR;
    TOT NUMBER(5):=0;
    BILL NUMBER(7,2):=0;
BEGIN
    TOT:=CMR-LMR;
    IF TOT <= 100 THEN
        BILL:=TOT*.50;
    ELSIF TOT > 100 AND TOT <= 200 THEN
        BILL:=(100*.50)+((TOT-100)*.75);
    ELSE
        BILL:=(100*.50)+(100*.75)+(TOT-200)*1.25;
    END IF;
    DBMS_OUTPUT.PUT_LINE('TOTAL UNIT CONSUMED '||TOT);
    DBMS_OUTPUT.PUT_LINE('TOTAL BILL AMOUNT '||BILL);
END;
/