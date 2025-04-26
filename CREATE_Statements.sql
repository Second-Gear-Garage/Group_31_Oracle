-- 1. CAR_BODY_TYPE
CREATE TABLE CAR_BODY_TYPE (
  Body_ID            NUMBER(10)          PRIMARY KEY,
  Type_Description   VARCHAR2(80)
);

-- 2. CAR_MANUFACTURER
CREATE TABLE CAR_MANUFACTURER (
  Manufacturer_ID         NUMBER(10)      PRIMARY KEY,
  Manufacturer_Description VARCHAR2(80)
);

-- 3. FUEL_TYPE
CREATE TABLE FUEL_TYPE (
  Fuel_Type_ID           NUMBER(10)       PRIMARY KEY,
  Fuel_Type_Description  VARCHAR2(80)
);

-- 4. ENGINE_TYPE
CREATE TABLE ENGINE_TYPE (
  Engine_ID             NUMBER(10)        PRIMARY KEY,
  Engine_Description    VARCHAR2(80)
);

-- 5. COLOUR_TYPE
CREATE TABLE COLOUR_TYPE (
  Colour_ID    NUMBER(10)   PRIMARY KEY,
  Colour_Name  VARCHAR2(80)
);

-- 6. DRIVE_TYPE
CREATE TABLE DRIVE_TYPE (
  Drive_Type_ID            NUMBER(10)     PRIMARY KEY,
  Drive_Type_Description   VARCHAR2(80)
);

-- 7. CONDITION
CREATE TABLE CONDITION (
  Condition_ID             NUMBER(10)     PRIMARY KEY,
  Condition_Description    VARCHAR2(80)
);

-- 8. TRANSMISSION_TYPE
CREATE TABLE TRANSMISSION_TYPE (
  Transmission_Type_ID            NUMBER(10)  PRIMARY KEY,
  Transmission_Type_Description   VARCHAR2(80)
);

-- 9. CAR
CREATE TABLE CAR (
  Car_ID               NUMBER(10)        PRIMARY KEY,
  Body_Type_ID         NUMBER(10)        REFERENCES CAR_BODY_TYPE(Body_ID),
  Manufacturer_ID      NUMBER(10)        REFERENCES CAR_MANUFACTURER(Manufacturer_ID),
  Fuel_Type_ID         NUMBER(10)        REFERENCES FUEL_TYPE(Fuel_Type_ID),
  Engine_ID            NUMBER(10)        REFERENCES ENGINE_TYPE(Engine_ID),
  Colour_ID            NUMBER(10)        REFERENCES COLOUR_TYPE(Colour_ID),
  Drive_Type_ID        NUMBER(10)        REFERENCES DRIVE_TYPE(Drive_Type_ID),
  Condition_ID         NUMBER(10)        REFERENCES CONDITION(Condition_ID),
  Transmission_Type_ID NUMBER(10)        REFERENCES TRANSMISSION_TYPE(Transmission_Type_ID),
  Price                NUMBER(10,2),
  Mileage              NUMBER(7),
  Year                 NUMBER(4)
);

-- 11. DEPARTMENT
CREATE TABLE DEPARTMENT (
  Department_ID    NUMBER(10)     PRIMARY KEY,
  Department_Name  VARCHAR2(80)
); 

-- 12. EMPLOYEE
CREATE TABLE EMPLOYEE (
  Employee_ID     NUMBER(10)     PRIMARY KEY,
  RSA_ID          NUMBER(10),
  Surname         VARCHAR2(80),
  Cellphone       VARCHAR2(80),
  Email           VARCHAR2(80),
  Department_ID   NUMBER(10)     REFERENCES DEPARTMENT(Department_ID)
); 

-- 13. CUSTOMER
CREATE TABLE CUSTOMER (
  Customer_ID    NUMBER(10)     PRIMARY KEY,
  Surname        VARCHAR2(80),
  Cellphone      VARCHAR2(80),
  Email          VARCHAR2(80)
);

-- 14. PART_CATEGORY
CREATE TABLE PART_CATEGORY (
  Category_ID           NUMBER(10)     PRIMARY KEY,
  Category_Description  VARCHAR2(80)
);

-- 15. PART_MANUFACTURER
CREATE TABLE PART_MANUFACTURER (
  Manufacturer_ID           NUMBER(10)     PRIMARY KEY,
  Manufacturer_Description  VARCHAR2(80)
); 

-- 16. PART
CREATE TABLE PART (
  Part_ID           NUMBER(10)     PRIMARY KEY,
  Manufacturer_ID   NUMBER(10)     REFERENCES PART_MANUFACTURER(Manufacturer_ID),
  Category_ID       NUMBER(10)     REFERENCES PART_CATEGORY(Category_ID),
  Price             NUMBER(10,2)
); 

-- 10. SALES
CREATE TABLE SALES (
  Invoice_ID    NUMBER(10)      PRIMARY KEY,
  Employee_ID   NUMBER(10)      REFERENCES EMPLOYEE(Employee_ID),
  Customer_ID   NUMBER(10)      REFERENCES CUSTOMER(Customer_ID),
  Sales_Date    DATE
);

-- 17. PART_SALE_INFO  (joins PART ? SALES)
CREATE TABLE PART_SALE_INFO (
  Invoice_ID  NUMBER(10)     REFERENCES SALES(Invoice_ID),
  Part_ID     NUMBER(10)     REFERENCES PART(Part_ID),
  Quantity    NUMBER(10),
  PRIMARY KEY (Invoice_ID, Part_ID)
);

-- 18. CAR_SALE_INFO   (joins CAR ? SALES)
CREATE TABLE CAR_SALE_INFO (
  Invoice_ID  NUMBER(10)     REFERENCES SALES(Invoice_ID),
  Car_ID      NUMBER(10)     REFERENCES CAR(Car_ID),
  PRIMARY KEY (Invoice_ID, Car_ID)
); 
