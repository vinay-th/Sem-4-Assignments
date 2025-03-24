-- 3. Create a procedure to Just print a message on prompt.

CREATE OR REPLACE PROCEDURE Print AS 
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello world!');
END Print;
/

BEGIN 
    Print;
END;
/