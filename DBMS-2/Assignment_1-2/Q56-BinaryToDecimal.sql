-- 56.WAP to accept a no in binary format and print it in decimal format
DECLARE
    N VARCHAR2(20):=&N;
    decimalNum NUMBER(10,4):=0;
    tempStr VARCHAR2(10);
BEGIN
    FOR I IN 1..LENGTH(N) LOOP
        tempStr:=SUBSTR(N,I,1);
        decimalNum:=decimalNum+tempStr*POWER(2,LENGTH(N)-I);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('THE DECIMAL NUMBER IS '||decimalNum);
END;
/