-- 8. Create a procedure to insert a new row in Customer table.
CREATE TABLE Customer (
    id NUMBER,
    cus_name VARCHAR2(50),
    bill_id NUMBER
);

CREATE OR REPLACE PROCEDURE Customer_Add(
    u_cus_id IN NUMBER,
    u_cus_name IN VARCHAR2,
    u_bill_id IN NUMBER
) AS 
BEGIN 
    INSERT 
    INTO Customer(id, cus_name, bill_id)
    VALUES (u_cus_id, u_cus_name, u_bill_id);

    DBMS_OUTPUT.PUT_LINE(u_cus_name || ' successfully added');

END Customer_Add;
/

BEGIN
    Customer_Add(101 ,'Vinay', 1001);
END;
/