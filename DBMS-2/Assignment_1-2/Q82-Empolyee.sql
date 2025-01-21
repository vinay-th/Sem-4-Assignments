-- 82. WAP to accept a empno and display empno,name,sal,exp,dname,grade and loc.
DECLARE 
    EMPNO NUMBER:=&EMPNO;
    ENAME VARCHAR2(20);
    SAL NUMBER;
    EXP NUMBER;
    DNAME VARCHAR2(20);
    GRADE NUMBER;
    LOC VARCHAR2(20);
BEGIN
    SELECT E.ENAME,E.SAL,E.EXP,D.DNAME,D.GRADE,D.LOC INTO ENAME,SAL,EXP,DNAME,GRADE,LOC
    FROM EMP E,DEPT D
    WHERE E.DEPTNO=D.DEPTNO AND E.EMPNO=EMPNO;
    DBMS_OUTPUT.PUT_LINE('EMPNO: '||EMPNO||' NAME: '||ENAME||' SALARY: '||SAL||' EXPERIENCE: '||EXP||' DEPARTMENT NAME: '||DNAME||' GRADE: '||GRADE||' LOCATION: '||LOC);
END;
/