-- (Optional) Create a sequence for Fuel_Type_ID
CREATE SEQUENCE fuel_type_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
-- Insert fuel types
INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Petrol');

INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Diesel');

INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Electric');

INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Hybrid (Petrol/Electric)');

INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Hybrid (Diesel/Electric)');

INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Plug-in Hybrid');

INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Hydrogen Fuel Cell');

INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Compressed Natural Gas (CNG)');

INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Liquefied Petroleum Gas (LPG)');

-- Commit the changes
COMMIT;
