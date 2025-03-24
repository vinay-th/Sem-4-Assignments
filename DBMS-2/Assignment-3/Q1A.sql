-- Create a table Product with column name (Prod_id, Prod_name, Prod_amt, Prod_comp, Prod_mfgdate, Prod_expdate). Insert at least 5 records.

DROP TABLE Product;

CREATE TABLE Product (
    Prod_id INT PRIMARY KEY,
    Prod_name VARCHAR(50),
    Prod_amt INT,
    Prod_comp VARCHAR(50),
    Prod_mfgdate DATE,
    Prod_expdate DATE
);

INSERT INTO Product (Prod_id, Prod_name, Prod_amt, Prod_comp, Prod_mfgdate, Prod_expdate) 
VALUES (102, 'ThinkPad', 120000, 'Lenovo', TO_DATE('15-05-2023', 'DD-MM-YYYY'), TO_DATE('15-05-2033', 'DD-MM-YYYY'));

INSERT INTO Product (Prod_id, Prod_name, Prod_amt, Prod_comp, Prod_mfgdate, Prod_expdate) 
VALUES (103, 'MacBook Pro', 250000, 'Apple', TO_DATE('10-02-2024', 'DD-MM-YYYY'), TO_DATE('10-02-2040', 'DD-MM-YYYY'));

INSERT INTO Product (Prod_id, Prod_name, Prod_amt, Prod_comp, Prod_mfgdate, Prod_expdate) 
VALUES (104, 'XPS 13', 140000, 'Dell', TO_DATE('20-07-2022', 'DD-MM-YYYY'), TO_DATE('20-07-2032', 'DD-MM-YYYY'));

INSERT INTO Product (Prod_id, Prod_name, Prod_amt, Prod_comp, Prod_mfgdate, Prod_expdate) 
VALUES (105, 'Inspiron 15', 90000, 'Dell', TO_DATE('05-09-2023', 'DD-MM-YYYY'), TO_DATE('05-09-2033', 'DD-MM-YYYY'));


SELECT * FROM Product;
