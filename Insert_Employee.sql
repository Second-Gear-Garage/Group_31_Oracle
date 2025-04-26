-- Optional: Create a sequence for Employee_ID
CREATE SEQUENCE employee_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
  
-- Insert multiple employees
INSERT INTO EMPLOYEE (Employee_ID, RSA_ID, Surname, Cellphone, Email, Department_ID) VALUES (employee_seq.NEXTVAL, NULL, 'Smith', '0821234567', 'smith@example.com', 1);
INSERT INTO EMPLOYEE (Employee_ID, RSA_ID, Surname, Cellphone, Email, Department_ID) VALUES (employee_seq.NEXTVAL, NULL, 'Naidoo', '0839876543', 'naidoo@example.com', 2);
INSERT INTO EMPLOYEE (Employee_ID, RSA_ID, Surname, Cellphone, Email, Department_ID) VALUES (employee_seq.NEXTVAL, NULL, 'Van der Merwe', '0841112222', 'vdmerwe@example.com', 3);
INSERT INTO EMPLOYEE (Employee_ID, RSA_ID, Surname, Cellphone, Email, Department_ID) VALUES (employee_seq.NEXTVAL, NULL, 'Mokoena', '0723334444', 'mokoena@example.com', 4);
INSERT INTO EMPLOYEE (Employee_ID, RSA_ID, Surname, Cellphone, Email, Department_ID) VALUES (employee_seq.NEXTVAL, NULL, 'Patel', '0735556666', 'patel@example.com', 5);
INSERT INTO EMPLOYEE (Employee_ID, RSA_ID, Surname, Cellphone, Email, Department_ID) VALUES (employee_seq.NEXTVAL, NULL, 'Botha', '0767778888', 'botha@example.com', 1);
INSERT INTO EMPLOYEE (Employee_ID, RSA_ID, Surname, Cellphone, Email, Department_ID) VALUES (employee_seq.NEXTVAL, NULL, 'Jacobs', '0819990000', 'jacobs@example.com', 2);
INSERT INTO EMPLOYEE (Employee_ID, RSA_ID, Surname, Cellphone, Email, Department_ID) VALUES (employee_seq.NEXTVAL, NULL, 'Williams', '0791122334', 'williams@example.com', 3);
INSERT INTO EMPLOYEE (Employee_ID, RSA_ID, Surname, Cellphone, Email, Department_ID) VALUES (employee_seq.NEXTVAL, NULL, 'Zulu', '0742233445', 'zulu@example.com', 4);
INSERT INTO EMPLOYEE (Employee_ID, RSA_ID, Surname, Cellphone, Email, Department_ID) VALUES (employee_seq.NEXTVAL, NULL, 'Khumalo', '0713344556', 'khumalo@example.com', 5);

COMMIT;
