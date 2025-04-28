-- Optional: Create sequence for Category_ID
CREATE SEQUENCE part_category_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Insert example part categories
INSERT INTO PART_CATEGORY (Category_ID, Category_Description)
VALUES (part_category_seq.NEXTVAL, 'Engine Components');

INSERT INTO PART_CATEGORY (Category_ID, Category_Description)
VALUES (part_category_seq.NEXTVAL, 'Brakes and Suspension');

INSERT INTO PART_CATEGORY (Category_ID, Category_Description)
VALUES (part_category_seq.NEXTVAL, 'Electrical System');

INSERT INTO PART_CATEGORY (Category_ID, Category_Description)
VALUES (part_category_seq.NEXTVAL, 'Interior Accessories');

INSERT INTO PART_CATEGORY (Category_ID, Category_Description)
VALUES (part_category_seq.NEXTVAL, 'Exterior Body Parts');

INSERT INTO PART_CATEGORY (Category_ID, Category_Description)
VALUES (part_category_seq.NEXTVAL, 'Tires and Wheels');

COMMIT;
