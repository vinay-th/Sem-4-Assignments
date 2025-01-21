-- 71. Write a program to accept the population of hyderabad each year the population increases 2% after 4y what is the population of hydredabad.
--     (Hint: P=P+P*2/100) 

DECLARE
    P NUMBER:=&P;
    L NUMBER;
BEGIN
    FOR J IN 1..4 LOOP
        L:=P*2/100;
        P:=P+L;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('POPULATION OF HYDERABAD AFTER 4 YEARS IS '||TRUNC(P));
END;
/