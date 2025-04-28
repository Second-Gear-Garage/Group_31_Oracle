-- Optional: Create sequence for Manufacturer_ID
CREATE SEQUENCE part_manufacturer_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Insert example part manufacturers
INSERT INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (part_manufacturer_seq.NEXTVAL, 'Bosch');

INSERT INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (part_manufacturer_seq.NEXTVAL, 'Delphi');

INSERT INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (part_manufacturer_seq.NEXTVAL, 'NGK');

INSERT INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (part_manufacturer_seq.NEXTVAL, 'Magneti Marelli');

INSERT INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (part_manufacturer_seq.NEXTVAL, 'Denso');

INSERT INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (part_manufacturer_seq.NEXTVAL, 'Valeo');

COMMIT;
