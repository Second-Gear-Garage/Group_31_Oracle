-- Optional: Create sequence for Part_ID
CREATE SEQUENCE part_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Insert example parts
INSERT INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price)
VALUES (part_seq.NEXTVAL, 1, 1, 1599.99); -- Bosch, Engine Components

INSERT INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price)
VALUES (part_seq.NEXTVAL, 2, 2, 899.50); -- Delphi, Brakes and Suspension

INSERT INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price)
VALUES (part_seq.NEXTVAL, 3, 3, 499.00); -- NGK, Electrical System

INSERT INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price)
VALUES (part_seq.NEXTVAL, 4, 4, 799.75); -- Magneti Marelli, Interior Accessories

INSERT INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price)
VALUES (part_seq.NEXTVAL, 5, 5, 2499.99); -- Denso, Exterior Body Parts

INSERT INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price)
VALUES (part_seq.NEXTVAL, 6, 6, 1999.99); -- Valeo, Tires and Wheels

COMMIT;
