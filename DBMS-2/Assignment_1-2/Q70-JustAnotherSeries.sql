-- 70. Write a program to find the series x+x2/2!+x3/3!+.....+xn/n!
DECLARE
    X NUMBER:=&X;
    N NUMBER:=&N;
    I NUMBER:=1;
    F NUMBER:=1;
    S NUMBER:=0;
BEGIN
    WHILE I<=N LOOP
        F:=F*I;
        S:=S+(X*I)/F;
        I:=I+1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('THE SUM OF THE SERIES IS '||S);
END;