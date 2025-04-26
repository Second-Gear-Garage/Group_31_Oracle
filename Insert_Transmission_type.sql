-- (Optional) Create a sequence for Transmission_Type_ID
CREATE SEQUENCE transmission_type_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
-- Insert typical transmission types
INSERT INTO TRANSMISSION_TYPE (Transmission_Type_ID, Transmission_Type_Description)
VALUES (transmission_type_seq.NEXTVAL, 'Manual');

INSERT INTO TRANSMISSION_TYPE (Transmission_Type_ID, Transmission_Type_Description)
VALUES (transmission_type_seq.NEXTVAL, 'Automatic');

INSERT INTO TRANSMISSION_TYPE (Transmission_Type_ID, Transmission_Type_Description)
VALUES (transmission_type_seq.NEXTVAL, 'Continuously Variable Transmission (CVT)');

INSERT INTO TRANSMISSION_TYPE (Transmission_Type_ID, Transmission_Type_Description)
VALUES (transmission_type_seq.NEXTVAL, 'Semi-Automatic / Automated Manual');

INSERT INTO TRANSMISSION_TYPE (Transmission_Type_ID, Transmission_Type_Description)
VALUES (transmission_type_seq.NEXTVAL, 'Dual-Clutch Transmission (DCT)');

-- Save the changes
COMMIT;
