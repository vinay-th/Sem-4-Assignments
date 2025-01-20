-- 48.WAP or accept marks of 3 subject as i/p and calculate the total marks and division of a student
-- i) If totmark>=60 then division is First
-- ii) If totmark <60 and totmark>=50 then division is second
-- iii) If totmark< 50 and >=35 then division is third
-- iv) If totmark< 35 then fail
DECLARE
    M1 NUMBER(2):=&M1;
    M2 NUMBER(2):=&M2;
    M3 NUMBER(2):=&M3;
    total NUMBER(5,2);
    average  NUMBER(5,2):=0;
BEGIN
    total:=M1+M2+M3;
    average :=total/3;
    IF average >=60 THEN
        DBMS_OUTPUT.PUT_LINE('THE DIVISION IS FIRST '||average );
    ELSIF average <60 AND average >=50 THEN
        DBMS_OUTPUT.PUT_LINE('THE DIVISION IS SECOND '||average );
    ELSIF average <50 AND average >=35 THEN
        DBMS_OUTPUT.PUT_LINE('THE DIVISION IS THIRD '||average );
    ELSE
        DBMS_OUTPUT.PUT_LINE('FAIL '||average );
    END IF;
END;
/