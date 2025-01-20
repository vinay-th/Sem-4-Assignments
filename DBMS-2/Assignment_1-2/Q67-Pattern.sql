-- 67.Write a program to find out the series 12+22+32+42+....++n2
DECLARE
    N NUMBER:=&N;
    A NUMBER:=1;
    B NUMBER:=2;
    C NUMBER:=0;
    D NUMBER:=0;
    S NUMBER:=0;
BEGIN
    WHILE A<=N LOOP
        C:=C+A*A;
        A:=A+2;
    END LOOP;
    WHILE B<=N LOOP
        D:=D+B*B;
        B:=B+2;
    END LOOP;
    S:=C-D;
    DBMS_OUTPUT.PUT_LINE('RESULT IS '||S);
END;
/
