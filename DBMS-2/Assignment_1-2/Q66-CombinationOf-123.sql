-- 66.Write a program to display all combination of 1,2,&3
BEGIN
    FOR i IN 1..3 LOOP
        FOR j IN 1..3 LOOP
            FOR k IN 1..3 LOOP
                DBMS_OUTPUT.PUT_LINE(i||j||k);
            END LOOP;
        END LOOP;
    END LOOP;
END;
/