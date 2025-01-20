-- 39. Write a program to accept the date and print the weekdays from the given date

-- INPUT 03-07-2024

-- OUTPUT
-- WEDNESDAY
-- THURSDAY 
-- FRIDAY   
-- SATURDAY 
-- SUNDAY   
-- MONDAY   
-- TUESDAY 
DECLARE
    D DATE := '&D';
    WD DATE;
BEGIN
    WD := D + 6;

    WHILE D <= WD LOOP
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(D,'DAY'));
        D := D+1;
    END LOOP;
END;
/