-- Write a program to accept the side of a square and calculate the area area =a2
DECLARE 
    LENGTH NUMBER := &LENGTH;
    AREA NUMBER;
BEGIN
    AREA := (LENGTH * LENGTH);

    DBMS_OUTPUT.PUT_LINE('Area of square with ' || LENGTH || ' is ' || AREA);
END;
/