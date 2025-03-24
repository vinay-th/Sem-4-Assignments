-- 5(A) Create a table Product with column name (Prod_id, Prod_name, Prod_amt, Prod_comp,
-- Prod_mfgdate, Prod_expdate). Insert at least 5 records.
-- 5(B) Create a trigger on product table for after update and back up the new data in new table
-- Product_new. Condition for deletion: Where Product Id=’P100’ and change the product
-- company name.

DROP TABLE Product;
DROP TABLE Product_new;

CREATE TABLE Product (
    Prod_id VARCHAR(6),
    Prod_name VARCHAR(20),
    Prod_amt INT,
    Prod_comp VARCHAR(20),
    Prod_mfgdate DATE,
    Prod_expdate DATE
);

INSERT INTO Product (Prod_id, Prod_name, Prod_amt, Prod_comp, Prod_mfgdate, Prod_expdate) 
VALUES ('P102', 'ThinkPad', 120000, 'Lenovo', TO_DATE('15-05-2023', 'DD-MM-YYYY'), TO_DATE('15-05-2033', 'DD-MM-YYYY'));
INSERT INTO Product (Prod_id, Prod_name, Prod_amt, Prod_comp, Prod_mfgdate, Prod_expdate) 
VALUES ('P103', 'MacBook Pro', 250000, 'Apple', TO_DATE('10-02-2024', 'DD-MM-YYYY'), TO_DATE('10-02-2040', 'DD-MM-YYYY'));
INSERT INTO Product (Prod_id, Prod_name, Prod_amt, Prod_comp, Prod_mfgdate, Prod_expdate) 
VALUES('P104', 'XPS 13', 140000, 'Dell', TO_DATE('20-07-2022', 'DD-MM-YYYY'), TO_DATE('20-07-2032', 'DD-MM-YYYY'));
INSERT INTO Product (Prod_id, Prod_name, Prod_amt, Prod_comp, Prod_mfgdate, Prod_expdate) 
VALUES('P105', 'Inspiron 15', 90000, 'Dell', TO_DATE('05-09-2023', 'DD-MM-YYYY'), TO_DATE('05-09-2033', 'DD-MM-YYYY'));
INSERT INTO Product (Prod_id, Prod_name, Prod_amt, Prod_comp, Prod_mfgdate, Prod_expdate) 
VALUES('P106', 'Surface Pro 7', 130000, 'Microsoft', TO_DATE('25-11-2023', 'DD-MM-YYYY'), TO_DATE('25-11-2033', 'DD-MM-YYYY'));

CREATE TABLE Product_new (
    Prod_id VARCHAR(6),
    Prod_name VARCHAR(20),
    Prod_amt INT,
    Prod_comp VARCHAR(20),
    Prod_mfgdate DATE,
    Prod_expdate DATE
);

CREATE OR REPLACE TRIGGER update_after_trigger
AFTER UPDATE ON Product
FOR EACH ROW
BEGIN
    INSERT INTO Product_new (Prod_id, Prod_name, Prod_amt, Prod_comp, Prod_mfgdate, Prod_expdate) 
    VALUES  (:NEW.Prod_id, :NEW.Prod_name, :NEW.Prod_amt, :NEW.Prod_comp, :NEW.Prod_mfgdate, :NEW.Prod_expdate); 
END;
/

UPDATE Product SET Prod_name = 'G15' WHERE PROD_ID = 'P105';

SELECT * FROM PRODUCT_NEW;