-- 23. Write a program to calculate the area of a triangle by accepting the 3 sides

-- HERE s IS SEMIPERIMETER
-- Area = √[s(s-a)(s-b)(s-c)]

DECLARE
    a NUMBER := &a;
    b NUMBER := &b;
    c NUMBER := &c;
    s NUMBER := (a + b + c) / 2;
    area NUMBER(7,2);
BEGIN
    area := SQRT(s * (s - a) * (s - b) * (s - c));
    DBMS_OUTPUT.PUT_LINE('The area is: ' || area);
END;
/