-- 40.WAP to accept the date and print the weekdays from the given date along with date format


-- INPUT 03-07-2024

-- OUTPUT
-- WEDNESDAY 03/07/24
-- THURSDAY  04/07/24
-- FRIDAY    05/07/24
-- SATURDAY  06/07/24
-- SUNDAY    07/07/24
-- MONDAY    08/07/24
-- TUESDAY   09/07/24

DECLARE
    D DATE := '&D';
    WD DATE;
BEGIN
    WD := D + 6;

    WHILE D <= WD LOOP
        DBMS_OUTPUT.PUT_LINE(TO_CHAR(D,'DAY') || ' ' || D);
        D := D+1;
    END LOOP;
END;
/