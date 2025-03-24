-- 3. Retrieve employee details for a given department ID using a cursor.

-- CREATE TABLE EMPLOYEES2 (
--     EMP_ID NUMBER PRIMARY KEY,
--     EMP_NAME VARCHAR2(50),
--     SALARY NUMBER(10,2),
--     DEPT_ID NUMBER
-- );

-- INSERT INTO EMPLOYEES2 (EMP_ID, EMP_NAME, SALARY, DEPT_ID) VALUES (101, 'John Doe', 50000, 10);
-- INSERT INTO EMPLOYEES2 (EMP_ID, EMP_NAME, SALARY, DEPT_ID) VALUES (102, 'Alice Brown', 60000, 10);
-- INSERT INTO EMPLOYEES2 (EMP_ID, EMP_NAME, SALARY, DEPT_ID) VALUES (103, 'Jane Smith', 55000, 20);
-- INSERT INTO EMPLOYEES2 (EMP_ID, EMP_NAME, SALARY, DEPT_ID) VALUES (104, 'Michael Johnson', 75000, 30);
-- INSERT INTO EMPLOYEES2 (EMP_ID, EMP_NAME, SALARY, DEPT_ID) VALUES (105, 'Emily Davis', 80000, 20);
-- INSERT INTO EMPLOYEES2 (EMP_ID, EMP_NAME, SALARY, DEPT_ID) VALUES (106, 'Robert White', 65000, 10);
-- INSERT INTO EMPLOYEES2 (EMP_ID, EMP_NAME, SALARY, DEPT_ID) VALUES (107, 'Laura Wilson', 70000, 30);

DECLARE
    u_dept_id NUMBER := &ENTER;

    v_emp_id NUMBER;
    v_emp_name VARCHAR2(20);
    v_emp_dept NUMBER;
    v_emp_sal NUMBER;

    CURSOR c IS SELECT EMP_ID, EMP_NAME, SALARY, DEPT_ID FROM EMPLOYEES2 WHERE DEPT_ID = u_dept_id;
BEGIN
    OPEN c;
        LOOP
            FETCH c INTO v_emp_id, v_emp_name, v_emp_sal, v_emp_dept;

            EXIT WHEN c%NOTFOUND;

            DBMS_OUTPUT.PUT_LINE('EMPLOYEE ID: ' || v_emp_id);
            DBMS_OUTPUT.PUT_LINE('EMPLOYEE name: ' || v_emp_name);
            DBMS_OUTPUT.PUT_LINE('EMPLOYEE salary: ' || v_emp_sal);
            DBMS_OUTPUT.PUT_LINE('EMPLOYEE DEPT ID: ' || v_emp_dept);
        END LOOP;
    CLOSE c;

    COMMIT;
END;
/