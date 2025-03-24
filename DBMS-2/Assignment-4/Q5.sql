-- 5. Create a procedure to update the salary of an employee whose name is ‘Dinesh’. 
CREATE TABLE Employee (
    Emp_id NUMBER PRIMARY KEY,
    Emp_name VARCHAR2(50),
    Emp_salary NUMBER(10,2)
);

INSERT INTO Employee VALUES (101, 'Dinesh', 50000);
INSERT INTO Employee VALUES (102, 'Rajesh', 45000);
INSERT INTO Employee VALUES (103, 'Suresh', 48000);
COMMIT;

CREATE OR REPLACE PROCEDURE DineshSystum AS
BEGIN
    UPDATE Employee SET Emp_salary = 70000 WHERE Emp_name = 'Dinesh';

    DBMS_OUTPUT.PUT_LINE('Done BKL');
END DineshSystum;
/

BEGIN
    DineshSystum;
END;
/