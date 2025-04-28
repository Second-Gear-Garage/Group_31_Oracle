-- Create sequence for Car_ID
CREATE SEQUENCE car_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

BEGIN
  FOR i IN 1..30 LOOP
    INSERT INTO CAR (
      Car_ID,
      Body_Type_ID,
      Manufacturer_ID,
      Fuel_Type_ID,
      Engine_ID,
      Colour_ID,
      Drive_Type_ID,
      Condition_ID,
      Transmission_Type_ID,
      Price,
      Mileage,
      Year
    ) VALUES (
      car_seq.NEXTVAL,
      TRUNC(DBMS_RANDOM.VALUE(1, 11)), -- 1 to 10 Body types
      TRUNC(DBMS_RANDOM.VALUE(1, 11)), -- 1 to 10 Manufacturers
      TRUNC(DBMS_RANDOM.VALUE(1, 6)),  -- 1 to 5 Fuel types
      TRUNC(DBMS_RANDOM.VALUE(1, 11)), -- 1 to 10 Engine types
      TRUNC(DBMS_RANDOM.VALUE(1, 11)), -- 1 to 10 Colour types
      TRUNC(DBMS_RANDOM.VALUE(1, 5)),  -- 1 to 4 Drive types
      TRUNC(DBMS_RANDOM.VALUE(1, 7)),  -- 1 to 6 Conditions
      TRUNC(DBMS_RANDOM.VALUE(1, 6)),  -- 1 to 5 Transmission types
      TRUNC(DBMS_RANDOM.VALUE(15000, 90000)), -- Price
      TRUNC(DBMS_RANDOM.VALUE(0, 300000)),    -- Mileage
      TRUNC(DBMS_RANDOM.VALUE(1995, 2024))    -- Year
    );
  END LOOP;
  COMMIT;
END;
/
