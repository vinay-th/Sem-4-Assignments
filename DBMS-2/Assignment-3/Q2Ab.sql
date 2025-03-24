-- 2(A) Create a table Product with column name (Prod_id, Prod_name, Prod_amt, Prod_comp, Prod_mfgdate, Prod_expdate). Insert at least 5 records.

DROP TABLE Product;
DROP TABLE Product_new;

CREATE TABLE Product (
    Prod_id VARCHAR(6) PRIMARY KEY,
    Prod_name VARCHAR(50),
    Prod_amt INT,
    Prod_comp VARCHAR(50),
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

CREATE TABLE Product_new(
    Prod_id VARCHAR(6) UNIQUE,
    Prod_name VARCHAR(50),
    Prod_amt INT,
    Prod_comp VARCHAR(50),
    Prod_mfgdate DATE,
    Prod_expdate DATE,
    Deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2(B) Create a trigger on product table for after delete and back up the old data in new table Product_new. Condition for deletion: Where Product Product Id=’P103’.

CREATE OR REPLACE TRIGGER Product_delete_backup
AFTER DELETE ON Product
FOR EACH ROW

BEGIN
    IF :OLD.Prod_id = 'P103' THEN
        INSERT INTO Product_new (Prod_id, Prod_name, Prod_amt, Prod_comp, Prod_mfgdate, Prod_expdate, Deleted_at) 
        VALUES (:OLD.Prod_id, :OLD.Prod_name, :OLD.Prod_amt, :OLD.Prod_comp, :OLD.Prod_mfgdate, :OLD.Prod_expdate, CURRENT_TIMESTAMP);
    END IF;
END;
/

DELETE FROM Product WHERE Prod_id = 'P103';

SELECT * FROM Product;
SELECT * FROM Product_new;