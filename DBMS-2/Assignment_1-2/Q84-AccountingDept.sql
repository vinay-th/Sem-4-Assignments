-- 84. WAP to accept the empno, based upon the dname transfer the emps ie, make the changes in the emp
-- table. Transfer the emps from Accounting dept to Research, Research dept to Operation, Opertion
-- dept to Sales and Sales to Accounting dept

DECLARE 
    EMPNO NUMBER:=&EMPNO;
    DNAME VARCHAR2(20);
BEGIN
    SELECT D.DNAME INTO DNAME
    FROM EMP E,DEPT D
    WHERE E.DEPTNO=D.DEPTNO AND E.EMPNO=EMPNO;
    
    IF DNAME='ACCOUNTING' THEN
        UPDATE EMP SET DEPTNO=20 WHERE EMPNO=EMPNO;
    ELSIF DNAME='RESEARCH' THEN
        UPDATE EMP SET DEPTNO=30 WHERE EMPNO=EMPNO;
    ELSIF DNAME='OPERATIONS' THEN
        UPDATE EMP SET DEPTNO=40 WHERE EMPNO=EMPNO;
    ELSE
        UPDATE EMP SET DEPTNO=10 WHERE EMPNO=EMPNO;
    END IF;
    COMMIT;
END;
/