-- 85. WAP to accept the empno and display all the details of emp. If emp doesnot exist display the appreciate message

DECLARE 
    EMPNO NUMBER:=&EMPNO;
    ENAME VARCHAR2(20);
    JOB VARCHAR2(20);
    HIREDATE DATE;
    SAL NUMBER;
    DEPTNO NUMBER;
    DNAME VARCHAR2(20);
BEGIN
    SELECT E.ENAME, E.JOB, E.HIREDATE, E.SAL, E.DEPTNO, D.DNAME
    INTO ENAME, JOB, HIREDATE, SAL, DEPTNO, DNAME
    FROM EMP E, DEPT D
    WHERE E.DEPTNO=D.DEPTNO AND E.EMPNO=EMPNO;
    
    DBMS_OUTPUT.PUT_LINE('Employee Number: ' || EMPNO);
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || ENAME);
    DBMS_OUTPUT.PUT_LINE('Job: ' || JOB);
    DBMS_OUTPUT.PUT_LINE('Hire Date: ' || HIREDATE);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || SAL);
    DBMS_OUTPUT.PUT_LINE('Department Number: ' || DEPTNO);
    DBMS_OUTPUT.PUT_LINE('Department Name: ' || DNAME);
END;
/
