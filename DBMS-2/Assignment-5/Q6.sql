-- 6. Create a cursor on employee table, if fetched rows are greater than 3, exit from the cursor
DECLARE
    v_emp_id NUMBER;

    CURSOR c IS SELECT EMP_ID FROM EMPLOYEE;
BEGIN
    OPEN c;
        LOOP
            EXIT WHEN c%ROWCOUNT = 3; 

            FETCH c INTO v_emp_id; 

            DBMS_OUTPUT.PUT_LINE('ROW NUM: ' || c%ROWCOUNT);
        END LOOP;
    CLOSE c;

    COMMIT;
END;
/