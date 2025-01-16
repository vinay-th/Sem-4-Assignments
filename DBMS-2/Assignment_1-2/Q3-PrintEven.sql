-- 3. Write a program to print the even numbers from 1 to 100.

DECLARE

    I NUMBER := 2;

BEGIN 

    -- here we will run a simple loop to 100
    WHILE I <= 100 LOOP
        -- print the I
        DBMS_OUTPUT.PUT_LINE(I);
        -- we will increment the i by 2 so it is always even
        I := I + 2;
    END LOOP;

END;
/