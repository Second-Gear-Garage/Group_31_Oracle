-- Optional: Create sequence for Invoice_ID
CREATE SEQUENCE sales_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Insert more sales records
INSERT INTO SALES (Invoice_ID, Employee_ID, Customer_ID, Sales_Date)
VALUES (sales_seq.NEXTVAL, 1, 3, TO_DATE('2025-04-20', 'YYYY-MM-DD'));

INSERT INTO SALES (Invoice_ID, Employee_ID, Customer_ID, Sales_Date)
VALUES (sales_seq.NEXTVAL, 2, 6, TO_DATE('2025-04-19', 'YYYY-MM-DD'));

INSERT INTO SALES (Invoice_ID, Employee_ID, Customer_ID, Sales_Date)
VALUES (sales_seq.NEXTVAL, 5, 9, TO_DATE('2025-04-18', 'YYYY-MM-DD'));

INSERT INTO SALES (Invoice_ID, Employee_ID, Customer_ID, Sales_Date)
VALUES (sales_seq.NEXTVAL, 4, 1, TO_DATE('2025-04-17', 'YYYY-MM-DD'));

INSERT INTO SALES (Invoice_ID, Employee_ID, Customer_ID, Sales_Date)
VALUES (sales_seq.NEXTVAL, 7, 4, TO_DATE('2025-04-16', 'YYYY-MM-DD'));

INSERT INTO SALES (Invoice_ID, Employee_ID, Customer_ID, Sales_Date)
VALUES (sales_seq.NEXTVAL, 6, 8, TO_DATE('2025-04-15', 'YYYY-MM-DD'));

INSERT INTO SALES (Invoice_ID, Employee_ID, Customer_ID, Sales_Date)
VALUES (sales_seq.NEXTVAL, 8, 11, TO_DATE('2025-04-14', 'YYYY-MM-DD'));

INSERT INTO SALES (Invoice_ID, Employee_ID, Customer_ID, Sales_Date)
VALUES (sales_seq.NEXTVAL, 9, 12, TO_DATE('2025-04-13', 'YYYY-MM-DD'));

INSERT INTO SALES (Invoice_ID, Employee_ID, Customer_ID, Sales_Date)
VALUES (sales_seq.NEXTVAL, 10, 13, TO_DATE('2025-04-12', 'YYYY-MM-DD'));

INSERT INTO SALES (Invoice_ID, Employee_ID, Customer_ID, Sales_Date)
VALUES (sales_seq.NEXTVAL, 12, 15, TO_DATE('2025-04-11', 'YYYY-MM-DD'));

COMMIT;
