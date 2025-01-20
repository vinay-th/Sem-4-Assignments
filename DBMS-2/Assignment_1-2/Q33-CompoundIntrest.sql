-- 33. Write a program to aceept the principle amount,rate,time and find the compound interest

-- FORMULA FOR CI IS
-- CI = P (1 + roi/n) ^ nt - P
-- WHERE n IS Number of times interest is compounded per year

-- IN PLSQL
-- CI = (P * POWER((1 + roi/n), (n*t))) - P

DECLARE
    P NUMBER(10,2) := &P;
    N NUMBER := &N;
    ROI NUMBER(10,2) := &ROI;
    T NUMBER := &T;

    CI NUMBER(10,2);
BEGIN
    CI := (P * POWER((1 + ROI/N), (N*T))) - P;
    DBMS_OUTPUT.PUT_LINE('Compound Interest is: ' || TO_CHAR(CI, '999999.99'));
END;
/