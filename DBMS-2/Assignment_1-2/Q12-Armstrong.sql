-- 12.Write a program to accept a no and check whether it is Armstrong number or not

-- just like reverse use that logic for getting cube of each digit and add it to res
DECLARE
    num NUMBER := &num;
    reminder NUMBER := 0; 
    res NUMBER := 0; 
    temp NUMBER := num; 
BEGIN 
    WHILE temp != 0 LOOP
        reminder := MOD(TEMP, 10);
        res := res + (reminder * reminder * reminder);
        temp := TRUNC(temp / 10);
    END LOOP;
    IF num = res THEN
        DBMS_OUTPUT.PUT_LINE('The number ' || num || ' is armstrong');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The number ' || num || ' is armstrong');
    END IF;
END;
/