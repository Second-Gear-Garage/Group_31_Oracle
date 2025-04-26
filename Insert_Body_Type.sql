-- 1. (Optional) Create a sequence for Body_ID values
CREATE SEQUENCE car_body_type_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- 2. Populate the table with typical car body types
INSERT INTO CAR_BODY_TYPE (Body_ID, Type_Description)
VALUES (car_body_type_seq.NEXTVAL, 'Sedan');

INSERT INTO CAR_BODY_TYPE (Body_ID, Type_Description)
VALUES (car_body_type_seq.NEXTVAL, 'Hatchback');

INSERT INTO CAR_BODY_TYPE (Body_ID, Type_Description)
VALUES (car_body_type_seq.NEXTVAL, 'Coupe');

INSERT INTO CAR_BODY_TYPE (Body_ID, Type_Description)
VALUES (car_body_type_seq.NEXTVAL, 'Convertible');

INSERT INTO CAR_BODY_TYPE (Body_ID, Type_Description)
VALUES (car_body_type_seq.NEXTVAL, 'Station Wagon');

INSERT INTO CAR_BODY_TYPE (Body_ID, Type_Description)
VALUES (car_body_type_seq.NEXTVAL, 'SUV');

INSERT INTO CAR_BODY_TYPE (Body_ID, Type_Description)
VALUES (car_body_type_seq.NEXTVAL, 'Crossover');

INSERT INTO CAR_BODY_TYPE (Body_ID, Type_Description)
VALUES (car_body_type_seq.NEXTVAL, 'Minivan');

INSERT INTO CAR_BODY_TYPE (Body_ID, Type_Description)
VALUES (car_body_type_seq.NEXTVAL, 'Pickup Truck');

INSERT INTO CAR_BODY_TYPE (Body_ID, Type_Description)
VALUES (car_body_type_seq.NEXTVAL, 'Van');

-- 3. Persist the changes
COMMIT;