-- 53.WAP to accept the length and breadth of a rectangle and find out the perimeter
DECLARE
    length NUMBER(4,2):=&length;
    breadth NUMBER(4,2):=&breadth;
    perimeter NUMBER(4,2);
BEGIN
    perimeter:=2*(length+breadth);
    DBMS_OUTPUT.PUT_LINE('THE PERIMETER OF RECTANGLE IS '||perimeter);
END;
/