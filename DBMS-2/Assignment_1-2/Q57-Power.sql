-- 57.WAP to accept two nos and input and find one no is raised to another one (without using any function)
DECLARE
    A NUMBER:=&A;
    B NUMBER:=&B;
    R NUMBER:=1;
BEGIN
    R:= B * A;
    DBMS_OUTPUT.PUT_LINE('A RAISED POWER B IS '||R);
END;
/
