-- 9. Create a procedure to perform both operation IN aand OUT as a parameter.
CREATE OR REPLACE PROCEDURE SqrNum(
    num IN NUMBER,
    sqr OUT NUMBER
) AS 
BEGIN 
    sqr := num * num;
END SqrNum;
/

DECLARE
    num NUMBER;
    res NUMBER;
BEGIN
    num := &ENTER_NUM;

    SqrNum(num, res);

    DBMS_OUTPUT.PUT_LINE('Square of num: ' || num || ' is ' || res);
END;
/