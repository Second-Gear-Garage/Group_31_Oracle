-- (Optional) Create a sequence for Department_ID
CREATE SEQUENCE department_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Insert typical departments
INSERT INTO DEPARTMENT (Department_ID, Department_Name)
VALUES (department_seq.NEXTVAL, 'Sales');

INSERT INTO DEPARTMENT (Department_ID, Department_Name)
VALUES (department_seq.NEXTVAL, 'Service');

INSERT INTO DEPARTMENT (Department_ID, Department_Name)
VALUES (department_seq.NEXTVAL, 'Finance');

INSERT INTO DEPARTMENT (Department_ID, Department_Name)
VALUES (department_seq.NEXTVAL, 'Parts');

INSERT INTO DEPARTMENT (Department_ID, Department_Name)
VALUES (department_seq.NEXTVAL, 'Administration');

-- Save changes
COMMIT;
