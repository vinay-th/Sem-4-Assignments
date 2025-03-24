-- 4. Fetch and process employees while checking cursor attributes like %ROWCOUNT and %FOUND.

DECLARE
    v_emp_id NUMBER;
    v_emp_name VARCHAR2(20);
    v_emp_dept NUMBER;
    v_emp_sal NUMBER;

    CURSOR c IS SELECT EMP_ID, EMP_NAME, SALARY, DEPT_ID FROM EMPLOYEES2;
BEGIN
    OPEN c;
        LOOP
            FETCH c INTO v_emp_id, v_emp_name, v_emp_sal, v_emp_dept;

            EXIT WHEN c%NOTFOUND;

            DBMS_OUTPUT.PUT_LINE('ROW NO: ' || c%ROWCOUNT);

            DBMS_OUTPUT.PUT_LINE('EMPLOYEE ID: ' || v_emp_id);
            DBMS_OUTPUT.PUT_LINE('EMPLOYEE name: ' || v_emp_name);
            DBMS_OUTPUT.PUT_LINE('EMPLOYEE salary: ' || v_emp_sal);
            DBMS_OUTPUT.PUT_LINE('EMPLOYEE DEPT ID: ' || v_emp_dept);
        END LOOP;
    CLOSE c;

    COMMIT;
END;
/