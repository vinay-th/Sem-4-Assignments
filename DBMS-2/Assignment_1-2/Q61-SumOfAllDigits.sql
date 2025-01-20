-- 61.WAP to accept a no and find the sum in a single digit
DECLARE
    N NUMBER(4):=&N;
    R NUMBER(4):=&R;
    S NUMBER(10):=0;
    T NUMBER(10):=N;
BEGIN
    WHILE T != 0 LOOP
        R := MOD(T, 10);
        S := S + R;
        T := TRUNC(T / 10);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('THE SUM IN SINGLE DIGIT OF ' || N || ' IS '||S);
END;
/