-- 74.Write a program to accept the annual income of the emp and find the income tax
-- i) If the annsal > 60000 then tax is 10% of income
-- ii) If the annsal > 100000 then tax is Rs 800+16% of income
-- iii) If the annsal > 140000 then tax is Rs 2500+25% of income\

DECLARE
    SALARY NUMBER:=&SALARY;
    TAX NUMBER;
BEGIN
    IF SALARY>140000 THEN
        TAX:=2500+SALARY*25/100;
    ELSIF SALARY>100000 THEN
        TAX:=800+SALARY*16/100;
    ELSIF SALARY>60000 THEN
        TAX:=SALARY*10/100;
    ELSE
        TAX:=0;
    END IF;
    DBMS_OUTPUT.PUT_LINE('TAX IS '||TAX);
END;