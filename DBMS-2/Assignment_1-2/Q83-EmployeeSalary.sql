-- 83. WAP to accept a empno and display empno,based on experience calculate the bonus and store it into the bonus table
-- If exp > 5 years then bonus is 1 month salary
-- If exp between 5 and 9 years then bonus is 20% of annual salary
-- If exp more than 9 years then bonus is 1 month sal plus 25% of annual salary

DECLARE 
    EMPNUM NUMBER:=&EMPNUM;
    EXPE NUMBER;
    SAL NUMBER;
    BONUS NUMBER;
BEGIN
    SELECT E.EXP,E.SAL INTO EXPE,SAL
    FROM EMP E
    WHERE E.EMPNO=EMPNUM;
    IF EXPE > 9 THEN
        BONUS := SAL + (SAL * 0.25);
    ELSIF EXPE BETWEEN 5 AND 9 THEN
        BONUS := SAL * 0.20;
    ELSE
        BONUS := SAL;
    END IF;
    INSERT INTO BONUS VALUES(EMPNO,BONUS);
    COMMIT;
END;
/