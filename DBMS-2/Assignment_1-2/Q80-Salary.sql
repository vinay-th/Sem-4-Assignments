-- 79. WAP to accept the empno and display ename,sal,hiredate and calculate ta,da,hra,lic,gross,exp and print
-- all emp details. ta is 30% of sal,da is 20% of sal,hra is 15% of sal,lic is 5% of sal

-- hello dear friend, this is the dummy value and the command 
-- you will need to create the table
-- CREATE TABLE employees (
--     empno NUMBER PRIMARY KEY,
--     ename VARCHAR2(50),
--     sal NUMBER,
--     hiredate DATE
-- );

-- Dummy data
-- INSERT INTO employees (empno, ename, sal, hiredate) VALUES (1, 'John Doe', 5000, TO_DATE('2020-01-15', 'YYYY-MM-DD'));
-- INSERT INTO employees (empno, ename, sal, hiredate) VALUES (2, 'Jane Smith', 6000, TO_DATE('2019-03-10', 'YYYY-MM-DD'));
-- INSERT INTO employees (empno, ename, sal, hiredate) VALUES (3, 'Alice Johnson', 7000, TO_DATE('2018-07-25', 'YYYY-MM-DD'));
-- INSERT INTO employees (empno, ename, sal, hiredate) VALUES (4, 'Bob Brown', 8000, TO_DATE('2017-11-30', 'YYYY-MM-DD'));

DECLARE
    --EMPNO NUMBER:=&EMPNO; -- this wont work
    EMPNUM NUMBER:=&EMPNUM; -- here use diffrent variable name
    ENAME VARCHAR2(20);
    SAL NUMBER;
    HIREDATE DATE;
    TA NUMBER;
    DA NUMBER;
    HRA NUMBER;
    LIC NUMBER;
    GROSS NUMBER;
    EXP NUMBER;
BEGIN
    SELECT ename, sal, hiredate 
        INTO ENAME, SAL, HIREDATE 
        FROM employees 
    WHERE empno = EMPNUM;

    TA:=SAL*30/100;
    DA:=SAL*20/100;
    HRA:=SAL*15/100;
    LIC:=SAL*5/100;
    GROSS:=SAL+TA+DA+HRA-LIC;
    EXP:=MONTHS_BETWEEN(SYSDATE,HIREDATE)/12;
    DBMS_OUTPUT.PUT_LINE('ENAME: '||ENAME);
    DBMS_OUTPUT.PUT_LINE('SAL: '||SAL);
    DBMS_OUTPUT.PUT_LINE('HIREDATE: '||HIREDATE);
    DBMS_OUTPUT.PUT_LINE('TA: '||TA);
    DBMS_OUTPUT.PUT_LINE('DA: '||DA);
    DBMS_OUTPUT.PUT_LINE('HRA: '||HRA);
    DBMS_OUTPUT.PUT_LINE('LIC: '||LIC);
    DBMS_OUTPUT.PUT_LINE('GROSS: '||GROSS);
    DBMS_OUTPUT.PUT_LINE('EXP: '||EXP);
END;