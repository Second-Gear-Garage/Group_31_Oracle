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

-- (Optional) Create a sequence for Manufacturer_ID
CREATE SEQUENCE car_manufacturer_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Insert popular car manufacturers
INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Toyota');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Ford');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Honda');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Chevrolet');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Nissan');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Volkswagen');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'BMW');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Mercedes-Benz');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Hyundai');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Kia');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Subaru');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Mazda');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Lexus');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Jeep');

INSERT INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (car_manufacturer_seq.NEXTVAL, 'Tesla');

-- Persist the changes
COMMIT;

-- (Optional) Create a sequence for Fuel_Type_ID
CREATE SEQUENCE fuel_type_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
-- Insert fuel types
INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Petrol');

INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Diesel');

INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Electric');

INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Hybrid (Petrol/Electric)');

INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Hybrid (Diesel/Electric)');

INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Plug-in Hybrid');

INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Hydrogen Fuel Cell');

INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Compressed Natural Gas (CNG)');

INSERT INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description)
VALUES (fuel_type_seq.NEXTVAL, 'Liquefied Petroleum Gas (LPG)');

-- Commit the changes
COMMIT;

-- (Optional) Create a sequence for Engine_ID
CREATE SEQUENCE engine_type_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
-- Insert engine types
INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'Inline-4');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'Inline-3');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'Inline-6');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'V6');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'V8');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'V10');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'V12');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'Electric Motor');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'Rotary Engine (Wankel)');

INSERT INTO ENGINE_TYPE (Engine_ID, Engine_Description)
VALUES (engine_type_seq.NEXTVAL, 'Boxer (Flat) Engine');

-- Save the inserts
COMMIT;

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

-- (Optional) Create a sequence for Transmission_Type_ID
CREATE SEQUENCE transmission_type_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;
-- Insert typical transmission types
INSERT INTO TRANSMISSION_TYPE (Transmission_Type_ID, Transmission_Type_Description)
VALUES (transmission_type_seq.NEXTVAL, 'Manual');

INSERT INTO TRANSMISSION_TYPE (Transmission_Type_ID, Transmission_Type_Description)
VALUES (transmission_type_seq.NEXTVAL, 'Automatic');

INSERT INTO TRANSMISSION_TYPE (Transmission_Type_ID, Transmission_Type_Description)
VALUES (transmission_type_seq.NEXTVAL, 'Continuously Variable Transmission (CVT)');

INSERT INTO TRANSMISSION_TYPE (Transmission_Type_ID, Transmission_Type_Description)
VALUES (transmission_type_seq.NEXTVAL, 'Semi-Automatic / Automated Manual');

INSERT INTO TRANSMISSION_TYPE (Transmission_Type_ID, Transmission_Type_Description)
VALUES (transmission_type_seq.NEXTVAL, 'Dual-Clutch Transmission (DCT)');

-- Save the changes
COMMIT;

-- Create sequence for Car_ID
CREATE SEQUENCE car_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

BEGIN
  FOR i IN 1..30 LOOP
    INSERT INTO CAR (
      Car_ID,
      Body_Type_ID,
      Manufacturer_ID,
      Fuel_Type_ID,
      Engine_ID,
      Colour_ID,
      Drive_Type_ID,
      Condition_ID,
      Transmission_Type_ID,
      Price,
      Mileage,
      Year
    ) VALUES (
      car_seq.NEXTVAL,
      TRUNC(DBMS_RANDOM.VALUE(1, 11)), -- 1 to 10 Body types
      TRUNC(DBMS_RANDOM.VALUE(1, 11)), -- 1 to 10 Manufacturers
      TRUNC(DBMS_RANDOM.VALUE(1, 6)),  -- 1 to 5 Fuel types
      TRUNC(DBMS_RANDOM.VALUE(1, 11)), -- 1 to 10 Engine types
      TRUNC(DBMS_RANDOM.VALUE(1, 11)), -- 1 to 10 Colour types
      TRUNC(DBMS_RANDOM.VALUE(1, 5)),  -- 1 to 4 Drive types
      TRUNC(DBMS_RANDOM.VALUE(1, 7)),  -- 1 to 6 Conditions
      TRUNC(DBMS_RANDOM.VALUE(1, 6)),  -- 1 to 5 Transmission types
      TRUNC(DBMS_RANDOM.VALUE(15000, 90000)), -- Price
      TRUNC(DBMS_RANDOM.VALUE(0, 300000)),    -- Mileage
      TRUNC(DBMS_RANDOM.VALUE(1995, 2024))    -- Year
    );
  END LOOP;
  COMMIT;
END;
/

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

-- Optional: Create sequence for Manufacturer_ID
CREATE SEQUENCE part_manufacturer_seq
  START WITH 1
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Insert example part manufacturers
INSERT INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (part_manufacturer_seq.NEXTVAL, 'Bosch');

INSERT INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (part_manufacturer_seq.NEXTVAL, 'Delphi');

INSERT INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (part_manufacturer_seq.NEXTVAL, 'NGK');

INSERT INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (part_manufacturer_seq.NEXTVAL, 'Magneti Marelli');

INSERT INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (part_manufacturer_seq.NEXTVAL, 'Denso');

INSERT INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description)
VALUES (part_manufacturer_seq.NEXTVAL, 'Valeo');

COMMIT;
 
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


COMMIT;

-- Create the sequence for generating Invoice_IDs
-- Insert sample records
INSERT INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES (1, 1, 6);
INSERT INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES (2, 2, 2);
INSERT INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES (3, 3, 10);
INSERT INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES (4, 4, 3);
INSERT INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES (5, 5, 8);
INSERT INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES (6, 6, 1);
INSERT INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES (7, 1, 4);
INSERT INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES (8, 2, 7);
INSERT INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES (9, 3, 5);
INSERT INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES (10, 4, 9);
INSERT INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES (5, 5, 6);
INSERT INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES (9, 6, 2);
INSERT INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES (3, 1, 12);
INSERT INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES (2, 2, 3);

COMMIT;

-- Insert sample car sale records
INSERT INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES (1, 30);
INSERT INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES (2, 29);
INSERT INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES (3, 28);
INSERT INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES (4, 27);
INSERT INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES (5, 26);
INSERT INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES (6, 25);
INSERT INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES (7, 1);
INSERT INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES (8, 2);
INSERT INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES (9, 2);
INSERT INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES (5, 4);

COMMIT;



