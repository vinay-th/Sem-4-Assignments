-- 69. WAP to accept the distance between two cities in km and convert into mts ,cm & ft
DECLARE
    KM NUMBER:=&KM;
    M NUMBER(10):=0;
    CM NUMBER(10):=0;
    FT NUMBER(10):=0;
BEGIN
    M:=KM*1000;
    CM:=KM*100000;
    FT:=KM*3280.84;
    DBMS_OUTPUT.PUT_LINE(KM||' KM '||'IS '||M||' MTS '||CM||' CM '||FT||' FT');
END;