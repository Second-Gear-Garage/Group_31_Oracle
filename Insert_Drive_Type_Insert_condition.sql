-- (Optional) Create a sequence for Drive_Type_ID
CREATE SEQUENCE drive_type_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
-- Insert typical drive types
INSERT INTO DRIVE_TYPE (Drive_Type_ID, Drive_Type_Description)
VALUES (drive_type_seq.NEXTVAL, 'Front-Wheel Drive (FWD)');

INSERT INTO DRIVE_TYPE (Drive_Type_ID, Drive_Type_Description)
VALUES (drive_type_seq.NEXTVAL, 'Rear-Wheel Drive (RWD)');

INSERT INTO DRIVE_TYPE (Drive_Type_ID, Drive_Type_Description)
VALUES (drive_type_seq.NEXTVAL, 'All-Wheel Drive (AWD)');

INSERT INTO DRIVE_TYPE (Drive_Type_ID, Drive_Type_Description)
VALUES (drive_type_seq.NEXTVAL, 'Four-Wheel Drive (4WD)');

-- Save the changes
COMMIT;


-- (Optional) Create a sequence for Condition_ID
CREATE SEQUENCE condition_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
-- Insert common car conditions
INSERT INTO CONDITION (Condition_ID, Condition_Description)
VALUES (condition_seq.NEXTVAL, 'New');

INSERT INTO CONDITION (Condition_ID, Condition_Description)
VALUES (condition_seq.NEXTVAL, 'Used - Excellent');

INSERT INTO CONDITION (Condition_ID, Condition_Description)
VALUES (condition_seq.NEXTVAL, 'Used - Good');

INSERT INTO CONDITION (Condition_ID, Condition_Description)
VALUES (condition_seq.NEXTVAL, 'Used - Fair');

INSERT INTO CONDITION (Condition_ID, Condition_Description)
VALUES (condition_seq.NEXTVAL, 'Damaged');

INSERT INTO CONDITION (Condition_ID, Condition_Description)
VALUES (condition_seq.NEXTVAL, 'For Parts / Not Working');

-- Save the changes
COMMIT;
