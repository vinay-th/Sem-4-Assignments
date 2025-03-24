-- 7. Create an Exception, if no record found for customer name=”Rakesh”.
DECLARE
    C_id CUSTOMER.ID%TYPE;
BEGIN
    SELECT ID INTO C_id FROM CUSTOMER WHERE CUS_NAME = 'Rakesh';
    DBMS_OUTPUT.PUT_LINE('Rakesh is customer id: ' || C_id);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('KUCH NA MILA');
END;
/
