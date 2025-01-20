-- Write a program to accept principle amount ,rate,time calculate the simple interest si=(p*t*r)/100
DECLARE
    principle NUMBER(10,2) := &principle;
    ROI NUMBER(5,2) := &ROI;
    timee NUMBER(5,2) := &timee; 
    SI NUMBER(10,2);
BEGIN
    SI := (principle * timee * ROI) / 100;
    DBMS_OUTPUT.PUT_LINE('Simple Interest is: ' || TO_CHAR(SI, '999999.99'));
END;
/
