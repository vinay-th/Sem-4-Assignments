-- 52.WAP to accept the basic salary and find out the ta,da,hra,lic and gs
-- i)ta 20% of basic, da 10% of basic, hra 30% of basic, lic 5% of basic

DECLARE
    BasicSal NUMBER(6,2):=&BasicSal;
    tax NUMBER(6,2);
    DA NUMBER(6,2);
    HRA NUMBER(6,2);
    GS NUMBER(6,2);
    LIC NUMBER(6,2);
    NS NUMBER(8,2);
BEGIN
    tax:=BasicSal*(20/100);
    HRA:=BasicSal*(30/100);
    DA:=BasicSal*(10/100);
    LIC:=BasicSal*(5/100);
    GS:=TA+HRA+DA;
    NS:=GS-LIC;
    DBMS_OUTPUT.PUT_LINE('EMPLOYEE Basic Salary IS '||BasicSal);
    DBMS_OUTPUT.PUT_LINE('GROSS SALARY IS '||GS);
    DBMS_OUTPUT.PUT_LINE('NET SALARY IS '||NS);
END;
/