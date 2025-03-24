-- 2. Fetch and display all employee names and salaries using an explicit cursor.
DECLARE
    v_emp_name VARCHAR2(50);
    v_emp_sal NUMBER;

    CURSOR c IS SELECT EMP_ID, EMP_SALARY FROM EMPLOYEE;
BEGIN
    OPEN c;

    LOOP
        FETCH c INTO v_emp_name, v_emp_sal;

        EXIT WHEN c%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('EMPLOYEE NAME: ' || v_emp_name);
        DBMS_OUTPUT.PUT_LINE('EMPLOYEE SALARY: ' || v_emp_sal);
    END LOOP;

    CLOSE c;

    COMMIT;
END;
/