-- Optional: Create sequence for Customer_ID
CREATE SEQUENCE customer_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Insert multiple customers
INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Johnson', '0823456789', 'johnson@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Peters', '0834567890', 'peters@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Mthembu', '0845678901', 'mthembu@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Singh', '0726789012', 'singh@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'De Villiers', '0797890123', 'devilliers@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Brown', '0821011122', 'brown@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Nkosi', '0832021223', 'nkosi@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Visser', '0843031324', 'visser@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Moodley', '0744041425', 'moodley@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Botha', '0725051526', 'botha@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Robinson', '0836061627', 'robinson@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Mbatha', '0847071728', 'mbatha@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Swart', '0828081829', 'swart@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Adams', '0739091920', 'adams@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Pretorius', '0740102031', 'pretorius@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Gomez', '0721122233', 'gomez@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Daniels', '0832132435', 'daniels@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Nguyen', '0843142536', 'nguyen@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Muller', '0744152637', 'muller@example.com');

INSERT INTO CUSTOMER (Customer_ID, Surname, Cellphone, Email)
VALUES (customer_seq.NEXTVAL, 'Clark', '0825162738', 'clark@example.com');

COMMIT;
