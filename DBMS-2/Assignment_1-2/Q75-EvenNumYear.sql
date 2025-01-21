-- 75.WAP to accept a year as i/p & find how many even number present in that year
DECLARE
    YEAR NUMBER:=&YEAR;
    A CHAR;
    EVEN_COUNT NUMBER:=0;
BEGIN
    FOR I IN 1..LENGTH(YEAR) LOOP
        A:=SUBSTR(YEAR,I,1);
        IF MOD(A,2)=0 THEN
            EVEN_COUNT:=EVEN_COUNT+1;
        END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Number of even numbers in the year: '||EVEN_COUNT);
END;