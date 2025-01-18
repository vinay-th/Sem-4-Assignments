-- 25.Write a program to calculate the perimeter of a circle(perimeter=2*PI*r)
DECLARE
    rad NUMBER := &rad;
    peri NUMBER(7,2); -- 2 digit after .  
BEGIN
    peri := 2 * (22/7) * rad;
    DBMS_OUTPUT.PUT_LINE('The perimeter is: ' || peri);
END;
/