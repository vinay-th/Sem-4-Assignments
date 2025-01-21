-- 78. WAP to accept the emp details and calculate the bonus based on the following conditions
-- i) If sal < 500 then bonus is 10% sal
-- ii) If sal > 3500 then bonus is 12% sal
-- iii) If sal > 1000 then bonus is 13.5% sal

DECLARE
    SALARY NUMBER:=&SALARY;
    BONUS NUMBER;
BEGIN
    IF SALARY>1000 THEN
        BONUS:=SALARY*13.5/100;
    ELSIF SALARY>3500 THEN
        BONUS:=SALARY*12/100;
    ELSIF SALARY<500 THEN
        BONUS:=SALARY*10/100;
    ELSE
        BONUS:=0;
    END IF;
    DBMS_OUTPUT.PUT_LINE('BONUS IS '||BONUS);
END;