-- 5. Use a cursor to count the number of employees in each department and display results.
DECLARE
    v_dept_id EMPLOYEES2.DEPT_ID%TYPE;
    v_emp_count NUMBER;

    CURSOR c IS SELECT DEPT_ID, COUNT(*) AS EMP_COUNT 
        FROM EMPLOYEES2
        GROUP BY DEPT_ID;
BEGIN
    OPEN c;
        LOOP
            FETCH c INTO v_dept_id, v_emp_count;

            EXIT WHEN c%NOTFOUND;

            
            -- Display department-wise employee count
            DBMS_OUTPUT.PUT_LINE('Department ID: ' || v_dept_id || 
                                ', Employee Count: ' || v_emp_count);
        END LOOP;
    CLOSE c;

    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/