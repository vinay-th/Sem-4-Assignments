-- 1. Create a Cursor and fetch employee details from an EMPLOYEES table and give a 10% raise to employees. 

DECLARE
    v_emp_id NUMBER;
    v_emp_name VARCHAR2(50);
    v_emp_sal NUMBER;

    CURSOR c IS SELECT EMP_ID, EMP_NAME, EMP_SALARY FROM EMPLOYEE;
BEGIN
    OPEN c;

    LOOP
        FETCH c INTO v_emp_id, v_emp_name, v_emp_sal;

        EXIT WHEN c%NOTFOUND;

        UPDATE EMPLOYEE
        SET EMP_SALARY = v_emp_sal + (v_emp_sal * 0.10)
        WHERE EMP_ID = v_emp_id;

        DBMS_OUTPUT.PUT_LINE('UPDATED ' || v_emp_name || ' SALARY ' || v_emp_sal);
    END LOOP;

    CLOSE c;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Salary updated for all employees.');
END;
/