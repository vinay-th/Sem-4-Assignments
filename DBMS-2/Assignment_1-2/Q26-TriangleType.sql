-- 26.Write a program to accept the 3 sides of the triangle and display the type of triangle
DECLARE
    A NUMBER(4,2):=&A;
    B NUMBER(4,2):=&B;
    C NUMBER(4,2):=&C;
BEGIN
    IF (A=B AND B=C AND C=A) THEN
        DBMS_OUTPUT.PUT_LINE('EQUILATERAL TRIANGLE');
    ELSIF (A=B OR A=C OR C=B) THEN
        DBMS_OUTPUT.PUT_LINE('ISOSCELES TRIANGLE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('SCALEN TRIANGLE');
    END IF;
END;
/