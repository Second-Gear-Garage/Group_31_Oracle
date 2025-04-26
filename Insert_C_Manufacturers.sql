-- (Optional) Create a sequence for Manufacturer_ID
CREATE SEQUENCE car_manufacturer_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Insert popular car manufacturers
INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Toyota');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Ford');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Honda');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Chevrolet');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Nissan');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Volkswagen');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'BMW');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Mercedes-Benz');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Hyundai');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Kia');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Subaru');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Mazda');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Lexus');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Jeep');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Tesla');

-- Persist the changes
COMMIT;




