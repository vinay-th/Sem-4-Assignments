-- 86. WAP to accept the empno and print all the details of emp,dept and salgrade

DECLARE 
    E EMP%ROWTYPE;
    D DEPT%ROWTYPE;
    S SALGRADE%ROWTYPE;
BEGIN
    SELECT * INTO E
    FROM EMP
    WHERE EMPNO=&EMPNO;
    
    SELECT * INTO D
    FROM DEPT
    WHERE DEPTNO=E.DEPTNO;
    
    SELECT * INTO S
    FROM SALGRADE
    WHERE E.SAL BETWEEN LOSAL AND HISAL;
    
    DBMS_OUTPUT.PUT_LINE('Employee Number: ' || E.EMPNO);
    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || E.ENAME);
    DBMS_OUTPUT.PUT_LINE('Job: ' || E.JOB);
    DBMS_OUTPUT.PUT_LINE('Hire Date: ' || E.HIREDATE);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || E.SAL);
    DBMS_OUTPUT.PUT_LINE('Department Number: ' || E.DEPTNO);
    DBMS_OUTPUT.PUT_LINE('Department Name: ' || D.DNAME);
    DBMS_OUTPUT.PUT_LINE('Salary Grade: ' || S.GRADE);
    DBMS_OUTPUT.PUT_LINE('Lowest Salary: ' || S.LOSAL);
    DBMS_OUTPUT.PUT_LINE('Highest Salary: ' || S.HISAL);
END;
