-- 4. Create a procedure to display the users record. 

-- CREATE TABLE users (
--     user_id NUMBER PRIMARY KEY,
--     u_name VARCHAR2(100),
--     email VARCHAR2(100),
--     age NUMBER
-- );

--  INSERT INTO users (user_id, u_name, email, age) VALUES (1, 'VINAY', 'vinay@gmail', 19);

CREATE OR REPLACE PROCEDURE User_Display(
    u_user_id IN NUMBER
) AS 
    n_name VARCHAR(100);
    n_email VARCHAR(20);
    n_age NUMBER;
BEGIN
    SELECT u_name, email, age
    INTO n_name, n_email, n_age
    FROM users
    WHERE user_id = u_user_id;

    DBMS_OUTPUT.PUT_LINE('User id: ' || u_user_id);
    DBMS_OUTPUT.PUT_LINE('User name: ' || n_name);
    DBMS_OUTPUT.PUT_LINE('User email: ' || n_email);
    DBMS_OUTPUT.PUT_LINE('User age: ' || n_age);

EXCEPTION
    WHEN NO_DATA_FOUND THEN 
        DBMS_OUTPUT.PUT_LINE('KUCH NAI MILA');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('KUCH TOH FATT GAYA');
END User_Display;
/


DECLARE
    v_id NUMBER;
BEGIN
    v_id := &Enter_User_ID; -- User input
    User_Display(v_id);
END;
/