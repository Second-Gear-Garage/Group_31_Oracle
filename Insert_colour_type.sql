-- (Optional) Create a sequence for Colour_ID
CREATE SEQUENCE colour_type_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
-- Insert popular car colours
INSERT INTO COLOUR_TYPE (Colour_ID, Colour_Name)
VALUES (colour_type_seq.NEXTVAL, 'White');

INSERT INTO COLOUR_TYPE (Colour_ID, Colour_Name)
VALUES (colour_type_seq.NEXTVAL, 'Black');

INSERT INTO COLOUR_TYPE (Colour_ID, Colour_Name)
VALUES (colour_type_seq.NEXTVAL, 'Silver');

INSERT INTO COLOUR_TYPE (Colour_ID, Colour_Name)
VALUES (colour_type_seq.NEXTVAL, 'Gray');

INSERT INTO COLOUR_TYPE (Colour_ID, Colour_Name)
VALUES (colour_type_seq.NEXTVAL, 'Blue');

INSERT INTO COLOUR_TYPE (Colour_ID, Colour_Name)
VALUES (colour_type_seq.NEXTVAL, 'Red');

INSERT INTO COLOUR_TYPE (Colour_ID, Colour_Name)
VALUES (colour_type_seq.NEXTVAL, 'Green');

INSERT INTO COLOUR_TYPE (Colour_ID, Colour_Name)
VALUES (colour_type_seq.NEXTVAL, 'Yellow');

INSERT INTO COLOUR_TYPE (Colour_ID, Colour_Name)
VALUES (colour_type_seq.NEXTVAL, 'Brown');

INSERT INTO COLOUR_TYPE (Colour_ID, Colour_Name)
VALUES (colour_type_seq.NEXTVAL, 'Orange');

-- Save the changes
COMMIT;
