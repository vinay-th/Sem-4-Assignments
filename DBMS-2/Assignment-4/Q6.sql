-- 6. Create a procedure to delete a record of a product where product price is 200.
-- CREATE TABLE Product(
--     prod_id NUMBER,
--     prod_name VARCHAR(50),
--     prod_price INT
-- );

-- INSERT INTO Product (prod_id, prod_name, prod_price) VALUES(101, 'BAKED PASTA', 150);

CREATE OR REPLACE PROCEDURE Prod_Price_Change(
    u_prod_id IN NUMBER,
    u_price IN INT
) AS 
BEGIN
    UPDATE Product
    SET prod_price = u_price
    WHERE prod_id = u_prod_id;

    DBMS_OUTPUT.PUT_LINE('SUCCESS');
END;
/

BEGIN
    Prod_Price_Change(101, 200);
END;
/