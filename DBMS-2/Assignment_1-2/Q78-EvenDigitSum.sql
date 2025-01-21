-- 77. WAP to accept a number and calculate the sum of numbers in even places
DECLARE
    NUM NUMBER:=&NUM;
    SUM_EVEN NUMBER:=0;
    A CHAR;
BEGIN
    FOR I IN 1..LENGTH(NUM) LOOP
        A:=SUBSTR(NUM,I,1);
        IF MOD(I,2)=0 THEN
            SUM_EVEN:=SUM_EVEN+A;
        END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Sum of numbers in even places: '||SUM_EVEN);
END;