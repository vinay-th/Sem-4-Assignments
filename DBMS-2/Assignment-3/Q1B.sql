-- Create a trigger on product table for after delete and back up the old data in new table Product_new. Condition for deletion: Where Product name=’Soap’.

DROP TABLE Product;
DROP TABLE Product_new;

CREATE TABLE Product (
    Prod_id INT PRIMARY KEY,
    Prod_name VARCHAR(50),
    Prod_amt INT,
    Prod_comp VARCHAR(50),
    Prod_mfgdate DATE,
    Prod_expdate DATE
);

INSERT INTO Product VALUES (201, 'Soap', 50, 'Dove', TO_DATE('10-01-2024', 'DD-MM-YYYY'), TO_DATE('10-01-2026', 'DD-MM-YYYY'));
INSERT INTO Product VALUES (202, 'Laptop', 80000, 'HP', TO_DATE('15-03-2023', 'DD-MM-YYYY'), TO_DATE('15-03-2033', 'DD-MM-YYYY'));
INSERT INTO Product VALUES (203, 'Mobile', 20000, 'Samsung', TO_DATE('20-05-2022', 'DD-MM-YYYY'), TO_DATE('20-05-2025', 'DD-MM-YYYY'));
INSERT INTO Product VALUES (204, 'Shampoo', 100, 'Dove', TO_DATE('25-07-2023', 'DD-MM-YYYY'), TO_DATE('25-07-2025', 'DD-MM-YYYY'));

CREATE TABLE Product_new (
    Prod_id INT UNIQUE,
    Prod_name VARCHAR(50),
    Prod_amt INT,
    Prod_comp VARCHAR(50),
    Prod_mfgdate DATE,
    Prod_expdate DATE,
    Deleted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE OR REPLACE TRIGGER Product_delete
AFTER DELETE ON Product
FOR EACH ROW
WHEN (OLD.Prod_name = 'Soap')

BEGIN
    INSERT INTO Product_new (Prod_id, Prod_name, Prod_amt, Prod_comp, Prod_mfgdate, Prod_expdate, Deleted_at)
    VALUES (:OLD.Prod_id, :OLD.Prod_name, :OLD.Prod_amt, :OLD.Prod_comp, :OLD.Prod_mfgdate, :OLD.Prod_expdate, SYSTIMESTAMP);
END;
/

DELETE FROM Product WHERE Prod_name = 'Soap';

SELECT * FROM Product_new;