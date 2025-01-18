-- 24. Write a program to calculate the area of a circle by accepting the radius and unit of measure 
DECLARE
    rad NUMBER := &rad;
    area NUMBER(7,2); -- 2 digit after .  
BEGIN
    area := (22/7) * rad * rad;
    DBMS_OUTPUT.PUT_LINE('The area is: ' || area);
END;
/