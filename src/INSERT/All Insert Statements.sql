
                BEGIN
                    FOR r IN (SELECT table_name FROM user_tables) LOOP
                        FOR c IN (SELECT constraint_name FROM user_constraints
                                WHERE table_name = r.table_name
                                AND constraint_type != 'P'  -- Skip primary keys if needed
                                AND status = 'ENABLED') LOOP
                            BEGIN
                                EXECUTE IMMEDIATE 'ALTER TABLE "' || r.table_name ||
                                                '" DISABLE CONSTRAINT "' || c.constraint_name || '"';
                            END;
                        END LOOP;
                    END LOOP;
                END;
                /
            
-- fabricate-flush


DELETE FROM PART_SALE_INFO;

-- fabricate-flush

DELETE FROM PART;

-- fabricate-flush

DELETE FROM PART_CATEGORY;

-- fabricate-flush

DELETE FROM PART_MANUFACTURER;

-- fabricate-flush

DELETE FROM CAR_SALE_INFO;

-- fabricate-flush

DELETE FROM SALES;

-- fabricate-flush

DELETE FROM EMPLOYEE;

-- fabricate-flush

DELETE FROM CAR;

-- fabricate-flush

DELETE FROM TRANSMISSION_TYPE;

-- fabricate-flush

DELETE FROM CAR_BODY_TYPE;

-- fabricate-flush

DELETE FROM ENGINE_TYPE;

-- fabricate-flush

DELETE FROM DRIVE_TYPE;

-- fabricate-flush

DELETE FROM DEPARTMENT;

-- fabricate-flush

DELETE FROM CUSTOMER;

-- fabricate-flush

DELETE FROM FUEL_TYPE;

-- fabricate-flush

DELETE FROM COLOUR_TYPE;

-- fabricate-flush

DELETE FROM CAR_MANUFACTURER;

-- fabricate-flush

DELETE FROM CONDITION;

-- fabricate-flush


INSERT ALL
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (1, '2', '3', '3', '3', '5', '4', '4', '3', 'ZAR 150,000', '359206', '1999')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (2, '6', '8', '1', '6', '7', '3', '3', '7', 'ZAR 250,000', '229533', '1995')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (3, '4', '2', '4', '8', '1', '1', '6', '1', 'ZAR 450,000', '483828', '1993')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (4, '9', '9', '2', '2', '2', '2', '1', '2', 'ZAR 800,000', '185703', '1991')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (5, '8', '5', '4', '5', '6', '1', '2', '6', 'ZAR 350,000', '109833', '1992')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (6, '10', '1', '2', '10', '8', '3', '5', '5', 'ZAR 700,000', '482692', '2001')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (7, '3', '4', '1', '9', '4', '2', '4', '4', 'ZAR 850,000', '455443', '1998')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (8, '5', '10', '3', '1', '10', '4', '2', '2', 'ZAR 750,000', '198562', '1986')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (9, '1', '6', '1', '7', '3', '3', '5', '6', 'ZAR 550,000', '388063', '1999')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (10, '7', '7', '4', '4', '9', '2', '1', '5', 'ZAR 300,000', '476796', '2000')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (11, '3', '5', '2', '9', '8', '4', '3', '4', 'ZAR 200,000', '49575', '2012')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (12, '6', '7', '3', '8', '2', '1', '6', '7', 'ZAR 500,000', '128567', '2006')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (13, '5', '4', '1', '1', '9', '4', '6', '1', 'ZAR 900,000', '403319', '2010')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (14, '7', '2', '2', '10', '5', '1', '4', '3', 'ZAR 400,000', '63692', '2005')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (15, '4', '9', '4', '3', '1', '3', '2', '7', 'ZAR 600,000', '270558', '2006')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (16, '2', '8', '3', '6', '4', '2', '5', '6', 'ZAR 650,000', '353092', '1991')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (17, '9', '1', '1', '5', '10', '2', '1', '1', 'ZAR 1,000,000', '360704', '2006')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (18, '8', '10', '3', '7', '6', '3', '3', '4', 'ZAR 950,000', '123508', '2010')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (19, '1', '3', '4', '4', '7', '1', '2', '2', 'ZAR 450,000', '444936', '1992')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (20, '10', '6', '2', '2', '3', '4', '6', '5', 'ZAR 800,000', '170873', '2003')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (21, '8', '5', '4', '4', '6', '1', '5', '3', 'ZAR 1,000,000', '295351', '2008')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (22, '10', '4', '1', '9', '8', '2', '4', '6', 'ZAR 150,000', '341658', '1996')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (23, '9', '9', '3', '7', '7', '4', '3', '4', 'ZAR 300,000', '22036', '1992')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (24, '7', '6', '2', '6', '10', '3', '1', '2', 'ZAR 250,000', '252204', '2012')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (25, '3', '8', '2', '1', '3', '4', '1', '7', 'ZAR 600,000', '189659', '2012')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (26, '1', '7', '1', '8', '1', '1', '3', '5', 'ZAR 200,000', '494646', '1998')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (27, '4', '10', '3', '10', '2', '3', '2', '1', 'ZAR 650,000', '176714', '1991')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (28, '2', '3', '4', '2', '5', '2', '6', '3', 'ZAR 850,000', '30719', '1992')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (29, '6', '1', '1', '3', '4', '2', '4', '3', 'ZAR 350,000', '308661', '2009')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (30, '5', '2', '4', '5', '9', '4', '5', '7', 'ZAR 750,000', '172886', '2011')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (31, '5', '5', '2', '2', '6', '1', '6', '6', 'ZAR 950,000', '201617', '2009')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (32, '8', '10', '3', '6', '1', '3', '5', '1', 'ZAR 700,000', '279891', '1997')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (33, '10', '6', '4', '4', '4', '1', '4', '4', 'ZAR 500,000', '83987', '1967')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (34, '9', '7', '1', '9', '3', '3', '1', '2', 'ZAR 400,000', '103409', '2010')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (35, '7', '2', '3', '8', '8', '2', '3', '5', 'ZAR 550,000', '160298', '2008')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (36, '3', '3', '2', '10', '5', '4', '2', '1', 'ZAR 900,000', '170519', '2009')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (37, '1', '9', '4', '3', '7', '2', '5', '2', 'ZAR 750,000', '260085', '2006')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (38, '4', '1', '1', '5', '10', '4', '3', '6', 'ZAR 700,000', '195016', '1994')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (39, '2', '8', '3', '1', '2', '3', '6', '5', 'ZAR 450,000', '112016', '2010')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (40, '6', '4', '2', '7', '9', '1', '1', '4', 'ZAR 800,000', '264047', '2010')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (41, '1', '2', '1', '8', '2', '4', '4', '3', 'ZAR 550,000', '441436', '1989')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (42, '7', '9', '3', '4', '5', '1', '2', '7', 'ZAR 500,000', '481246', '2010')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (43, '4', '6', '4', '5', '10', '3', '2', '1', 'ZAR 350,000', '391079', '2002')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (44, '3', '1', '2', '10', '9', '2', '5', '4', 'ZAR 250,000', '103293', '2009')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (45, '6', '4', '3', '6', '1', '3', '4', '2', 'ZAR 600,000', '370175', '1987')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (46, '8', '3', '1', '7', '7', '1', '3', '7', 'ZAR 850,000', '240162', '2008')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (47, '2', '8', '4', '2', '4', '4', '6', '5', 'ZAR 300,000', '326727', '1985')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (48, '5', '5', '2', '3', '3', '2', '1', '3', 'ZAR 150,000', '211820', '2010')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (49, '10', '7', '1', '9', '6', '1', '4', '6', 'ZAR 200,000', '200676', '1994')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (50, '9', '10', '3', '1', '8', '4', '3', '1', 'ZAR 950,000', '482706', '1996')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (51, '6', '2', '4', '1', '8', '2', '1', '4', 'ZAR 400,000', '226394', '1994')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (52, '5', '6', '2', '7', '4', '3', '2', '2', 'ZAR 650,000', '277666', '1971')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (53, '8', '4', '1', '4', '5', '3', '6', '7', 'ZAR 1,000,000', '179777', '1992')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (54, '10', '9', '2', '3', '10', '1', '5', '5', 'ZAR 900,000', '5801', '2001')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (55, '9', '8', '4', '6', '6', '2', '5', '3', 'ZAR 200,000', '367500', '2006')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (56, '7', '10', '3', '8', '7', '4', '1', '6', 'ZAR 850,000', '281441', '2002')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (57, '3', '3', '2', '2', '2', '4', '3', '7', 'ZAR 900,000', '134266', '2001')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (58, '1', '5', '3', '5', '3', '3', '6', '6', 'ZAR 600,000', '457315', '2003')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (59, '4', '1', '1', '10', '9', '1', '4', '1', 'ZAR 1,000,000', '150336', '2004')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (60, '2', '7', '4', '9', '1', '2', '2', '2', 'ZAR 700,000', '7877', '2007')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (61, '2', '1', '4', '3', '8', '3', '6', '5', 'ZAR 500,000', '434504', '2007')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (62, '6', '10', '2', '6', '10', '2', '1', '4', 'ZAR 750,000', '330698', '1992')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (63, '4', '3', '3', '8', '3', '4', '4', '3', 'ZAR 650,000', '38741', '1996')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (64, '9', '6', '1', '2', '5', '1', '2', '1', 'ZAR 950,000', '449318', '2001')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (65, '8', '5', '3', '5', '1', '1', '5', '3', 'ZAR 250,000', '455839', '1993')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (66, '10', '7', '1', '10', '7', '3', '3', '2', 'ZAR 450,000', '189522', '2005')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (67, '3', '4', '2', '9', '2', '2', '5', '6', 'ZAR 800,000', '167100', '1995')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (68, '5', '2', '4', '1', '6', '4', '4', '4', 'ZAR 550,000', '225395', '1999')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (69, '1', '9', '3', '7', '4', '1', '3', '7', 'ZAR 350,000', '31084', '1979')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (70, '7', '8', '1', '4', '9', '4', '1', '5', 'ZAR 150,000', '102299', '2006')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (71, '10', '2', '4', '3', '10', '2', '2', '3', 'ZAR 300,000', '235103', '1992')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (72, '6', '9', '2', '5', '9', '3', '6', '2', 'ZAR 400,000', '191859', '2009')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (73, '7', '1', '4', '8', '7', '4', '3', '6', 'ZAR 350,000', '495363', '2003')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (74, '3', '10', '1', '7', '3', '2', '6', '5', 'ZAR 450,000', '498358', '1992')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (75, '8', '6', '3', '2', '1', '1', '1', '4', 'ZAR 1,000,000', '273943', '2007')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (76, '2', '4', '2', '9', '4', '3', '4', '7', 'ZAR 700,000', '25670', '2007')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (77, '9', '3', '2', '1', '2', '4', '2', '1', 'ZAR 850,000', '380140', '2008')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (78, '5', '5', '3', '10', '6', '2', '5', '2', 'ZAR 300,000', '16101', '2008')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (79, '1', '8', '1', '6', '5', '1', '6', '6', 'ZAR 600,000', '308590', '1972')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (80, '4', '7', '4', '4', '8', '3', '4', '5', 'ZAR 550,000', '381556', '1998')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (81, '8', '6', '3', '3', '3', '1', '5', '4', 'ZAR 950,000', '89908', '2003')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (82, '2', '5', '1', '5', '6', '2', '1', '3', 'ZAR 900,000', '18260', '1991')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (83, '9', '8', '4', '8', '8', '4', '3', '7', 'ZAR 250,000', '391058', '2009')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (84, '5', '10', '2', '7', '2', '3', '2', '1', 'ZAR 750,000', '279849', '1998')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (85, '1', '9', '1', '2', '5', '3', '3', '7', 'ZAR 200,000', '20482', '2009')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (86, '4', '7', '2', '9', '10', '2', '2', '1', 'ZAR 800,000', '110465', '2012')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (87, '10', '3', '4', '1', '9', '4', '6', '2', 'ZAR 500,000', '322182', '2011')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (88, '6', '1', '3', '10', '1', '1', '5', '6', 'ZAR 150,000', '180997', '2003')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (89, '7', '4', '3', '6', '7', '3', '4', '5', 'ZAR 400,000', '298652', '1992')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (90, '3', '2', '2', '4', '4', '4', '1', '4', 'ZAR 650,000', '115207', '2010')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (91, '8', '7', '4', '8', '8', '2', '4', '3', 'ZAR 550,000', '30367', '2004')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (92, '7', '2', '1', '10', '10', '1', '2', '5', 'ZAR 300,000', '132835', '1990')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (93, '10', '9', '2', '3', '9', '4', '5', '4', 'ZAR 650,000', '396040', '1988')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (94, '3', '1', '4', '5', '7', '3', '1', '3', 'ZAR 900,000', '54583', '2006')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (95, '1', '10', '3', '1', '3', '1', '3', '7', 'ZAR 200,000', '211040', '2011')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (96, '2', '6', '1', '7', '1', '2', '6', '1', 'ZAR 1,000,000', '345691', '2005')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (97, '5', '4', '1', '2', '4', '4', '2', '2', 'ZAR 250,000', '177896', '2008')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (98, '4', '3', '3', '6', '2', '2', '5', '6', 'ZAR 600,000', '303845', '2012')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (99, '9', '5', '2', '4', '6', '1', '3', '2', 'ZAR 800,000', '111169', '1987')
INTO CAR (Car_ID, Body_Type_ID, Manufacturer_ID, Fuel_Type_ID, Engine_ID, Colour_ID, Drive_Type_ID, Condition_ID, Transmission_Type_ID, Price, Mileage, C_Year) VALUES (100, '6', '8', '4', '9', '5', '3', '6', '7', 'ZAR 500,000', '209235', '2011')
SELECT 1 FROM DUAL;
-- fabricate-flush


INSERT ALL
INTO CAR_BODY_TYPE (Body_ID, Type_Description) VALUES (1, 'Individua')
INTO CAR_BODY_TYPE (Body_ID, Type_Description) VALUES (2, 'Enim')
INTO CAR_BODY_TYPE (Body_ID, Type_Description) VALUES (3, 'Provident')
INTO CAR_BODY_TYPE (Body_ID, Type_Description) VALUES (4, 'Faciam')
INTO CAR_BODY_TYPE (Body_ID, Type_Description) VALUES (5, 'Noris')
INTO CAR_BODY_TYPE (Body_ID, Type_Description) VALUES (6, 'Erroribus')
INTO CAR_BODY_TYPE (Body_ID, Type_Description) VALUES (7, 'De')
INTO CAR_BODY_TYPE (Body_ID, Type_Description) VALUES (8, 'Stulti')
INTO CAR_BODY_TYPE (Body_ID, Type_Description) VALUES (9, 'Magnopere')
INTO CAR_BODY_TYPE (Body_ID, Type_Description) VALUES (10, 'Constituant')
SELECT 1 FROM DUAL;
-- fabricate-flush


INSERT ALL
INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description) VALUES (4, 'Audi')
INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description) VALUES (10, 'BMW')
INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description) VALUES (9, 'Chevrolet')
INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description) VALUES (1, 'Ford')
INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description) VALUES (5, 'Honda')
INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description) VALUES (3, 'Mercedes-Benz')
INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description) VALUES (8, 'Nissan')
INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description) VALUES (2, 'Porsche')
INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description) VALUES (7, 'Toyota')
INTO CAR_MANUFACTURER (Manufacturer_ID, Manufacturer_Description) VALUES (6, 'Volkswagen')
SELECT 1 FROM DUAL;
-- fabricate-flush


INSERT ALL
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('81', '2')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('48', '2')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('99', '2')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('9', '2')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('82', '2')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('86', '2')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('45', '2')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('57', '2')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('92', '2')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('40', '4')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('60', '4')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('74', '4')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('64', '4')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('63', '4')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('33', '4')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('26', '4')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('71', '4')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('94', '4')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('44', '4')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('20', '4')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('25', '4')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('65', '5')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('76', '5')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('55', '5')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('24', '5')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('28', '6')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('50', '6')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('14', '6')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('41', '6')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('10', '6')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('98', '6')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('22', '6')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('52', '6')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('17', '7')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('8', '7')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('83', '7')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('91', '7')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('96', '7')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('11', '7')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('95', '7')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('37', '7')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('67', '8')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('16', '8')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('30', '8')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('73', '8')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('15', '8')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('59', '8')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('35', '8')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('3', '8')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('47', '8')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('36', '8')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('7', '8')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('21', '8')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('1', '8')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('53', '8')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('56', '9')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('49', '9')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('85', '11')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('42', '11')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('34', '11')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('70', '11')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('5', '12')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('31', '12')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('87', '12')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('27', '12')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('23', '12')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('61', '12')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('13', '12')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('18', '12')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('90', '12')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('77', '12')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('89', '12')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('80', '12')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('79', '12')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('58', '13')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('51', '15')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('32', '15')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('69', '15')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('19', '15')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('75', '16')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('78', '16')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('62', '16')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('100', '16')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('46', '16')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('66', '16')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('93', '16')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('84', '16')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('2', '16')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('38', '16')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('97', '17')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('12', '17')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('6', '17')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('72', '17')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('29', '17')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('39', '17')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('88', '19')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('68', '19')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('4', '19')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('54', '19')
INTO CAR_SALE_INFO (Invoice_ID, Car_ID) VALUES ('43', '19')
SELECT 1 FROM DUAL;
-- fabricate-flush


INSERT ALL
INTO COLOUR_TYPE (Colour_ID, Colour_Name) VALUES (1, 'Gray')
INTO COLOUR_TYPE (Colour_ID, Colour_Name) VALUES (2, 'Blue')
INTO COLOUR_TYPE (Colour_ID, Colour_Name) VALUES (3, 'Green')
INTO COLOUR_TYPE (Colour_ID, Colour_Name) VALUES (4, 'Brown')
INTO COLOUR_TYPE (Colour_ID, Colour_Name) VALUES (5, 'Black')
INTO COLOUR_TYPE (Colour_ID, Colour_Name) VALUES (6, 'Beige')
INTO COLOUR_TYPE (Colour_ID, Colour_Name) VALUES (7, 'White')
INTO COLOUR_TYPE (Colour_ID, Colour_Name) VALUES (8, 'Yellow')
INTO COLOUR_TYPE (Colour_ID, Colour_Name) VALUES (9, 'Red')
INTO COLOUR_TYPE (Colour_ID, Colour_Name) VALUES (10, 'Silver')
SELECT 1 FROM DUAL;
-- fabricate-flush


INSERT ALL
INTO CONDITION (Condition_ID, Condition_Description) VALUES (1, 'Used - Fair')
INTO CONDITION (Condition_ID, Condition_Description) VALUES (2, 'Used - Very Good')
INTO CONDITION (Condition_ID, Condition_Description) VALUES (3, 'Used - Poor')
INTO CONDITION (Condition_ID, Condition_Description) VALUES (4, 'New')
INTO CONDITION (Condition_ID, Condition_Description) VALUES (5, 'Used - Good')
INTO CONDITION (Condition_ID, Condition_Description) VALUES (6, 'Used - Excellent')
SELECT 1 FROM DUAL;
-- fabricate-flush


INSERT ALL
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (1, 'Dorita', 'Roadnight', '3235794433', 'dorita.roadnight@yahoo.co.in')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (2, 'Harmonie', 'De Carlo', '7177950131', 'harmonie.decarlo@yahoo.com.br')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (3, 'Sheryl', 'Eckley', '2432839054', 'sheryl.eckley@aol.com')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (4, 'Glennis', 'Swetenham', '4917863273', 'glennis.swetenham@gmail.com')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (5, 'Luis', 'Wooding', '6444763147', 'luis.wooding@hotmail.com')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (6, 'Roderigo', 'Rookwell', '7781553968', 'roderigo.rookwell@yahoo.com')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (7, 'Juanita', 'Sayle', '9626640587', 'juanita.sayle@aol.com')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (8, 'Selia', 'Witterick', '9938294182', 'selia.witterick@hotmail.com')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (9, 'Doralynn', 'Bance', '3517093888', 'doralynn.bance@hotmail.com')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (10, 'Bidget', 'Von Der Empten', '0087360376', 'bidget.vonderempten@hotmail.com')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (11, 'Abraham', 'Colquitt', '3384082156', 'abraham.colquitt@yahoo.in')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (12, 'Malvin', 'Brocklesby', '3132567105', 'malvin.brocklesby@hotmail.com')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (13, 'Ariadne', 'Dmtrovic', '4525403639', 'ariadne.dmtrovic@yahoo.fr')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (14, 'Bruce', 'Jevons', '0369266575', 'bruce.jevons@hotmail.com')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (15, 'Joby', 'Bortol', '9037947121', 'joby.bortol@yahoo.com')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (16, 'Talya', 'McAuslene', '5453683437', 'talya.mcauslene@gmail.com')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (17, 'Quintana', 'Buscher', '7890885452', 'quintana.buscher@yahoo.com.sg')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (18, 'Conny', 'Brightman', '9504449731', 'conny.brightman@yahoo.com')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (19, 'Merrile', 'Stote', '6155091446', 'merrile.stote@hotmail.com')
INTO CUSTOMER (Customer_ID, FName, Surname, Cellphone, Email) VALUES (20, 'Aurelia', 'Ucceli', '4603496690', 'aurelia.ucceli@facebook.com')
SELECT 1 FROM DUAL;
-- fabricate-flush


INSERT ALL
INTO DEPARTMENT (Department_ID, Department_Name) VALUES (1, 'Sales')
INTO DEPARTMENT (Department_ID, Department_Name) VALUES (3, 'Marketing')
INTO DEPARTMENT (Department_ID, Department_Name) VALUES (5, 'IT')
INTO DEPARTMENT (Department_ID, Department_Name) VALUES (2, 'Human Resources')
INTO DEPARTMENT (Department_ID, Department_Name) VALUES (4, 'Finance')
SELECT 1 FROM DUAL;
-- fabricate-flush


INSERT ALL
INTO DRIVE_TYPE (Drive_Type_ID, Drive_Type_Description) VALUES (4, 'All Wheel Drive (AWD)')
INTO DRIVE_TYPE (Drive_Type_ID, Drive_Type_Description) VALUES (2, 'Four Wheel Drive (4WD)')
INTO DRIVE_TYPE (Drive_Type_ID, Drive_Type_Description) VALUES (1, 'Front Wheel Drive (FWD)')
INTO DRIVE_TYPE (Drive_Type_ID, Drive_Type_Description) VALUES (3, 'Rear Wheel Drive (RWD)')
SELECT 1 FROM DUAL;
-- fabricate-flush


INSERT ALL
INTO EMPLOYEE (Employee_ID, RSA_ID, Emp_Name, Surname, Cellphone, Email, Department_ID) VALUES (1, '534453848', 'Dorita', 'Roadnight', '9039741783', 'dorita.roadnight@yahoo.co.in', '4')
INTO EMPLOYEE (Employee_ID, RSA_ID, Emp_Name, Surname, Cellphone, Email, Department_ID) VALUES (2, '204679914', 'Harmonie', 'De Carlo', '7822870774', 'harmonie.decarlo@yahoo.com.br', '5')
INTO EMPLOYEE (Employee_ID, RSA_ID, Emp_Name, Surname, Cellphone, Email, Department_ID) VALUES (3, '462561250', 'Sheryl', 'Eckley', '8833320884', 'sheryl.eckley@aol.com', '1')
INTO EMPLOYEE (Employee_ID, RSA_ID, Emp_Name, Surname, Cellphone, Email, Department_ID) VALUES (4, '547969165', 'Glennis', 'Swetenham', '1390251499', 'glennis.swetenham@gmail.com', '3')
INTO EMPLOYEE (Employee_ID, RSA_ID, Emp_Name, Surname, Cellphone, Email, Department_ID) VALUES (5, '807542967', 'Luis', 'Wooding', '6491975552', 'luis.wooding@hotmail.com', '2')
INTO EMPLOYEE (Employee_ID, RSA_ID, Emp_Name, Surname, Cellphone, Email, Department_ID) VALUES (6, '202494251', 'Roderigo', 'Rookwell', '6216919733', 'roderigo.rookwell@yahoo.com', '1')
INTO EMPLOYEE (Employee_ID, RSA_ID, Emp_Name, Surname, Cellphone, Email, Department_ID) VALUES (7, '082929433', 'Juanita', 'Sayle', '7062203526', 'juanita.sayle@aol.com', '2')
INTO EMPLOYEE (Employee_ID, RSA_ID, Emp_Name, Surname, Cellphone, Email, Department_ID) VALUES (8, '421689014', 'Selia', 'Witterick', '7864904309', 'selia.witterick@hotmail.com', '5')
INTO EMPLOYEE (Employee_ID, RSA_ID, Emp_Name, Surname, Cellphone, Email, Department_ID) VALUES (9, '496738174', 'Doralynn', 'Bance', '6601802443', 'doralynn.bance@hotmail.com', '4')
INTO EMPLOYEE (Employee_ID, RSA_ID, Emp_Name, Surname, Cellphone, Email, Department_ID) VALUES (10, '710935476', 'Bidget', 'Von Der Empten', '4323127174', 'bidget.vonderempten@hotmail.com', '3')
SELECT 1 FROM DUAL;
-- fabricate-flush


INSERT ALL
INTO ENGINE_TYPE (Engine_ID, Engine_Description) VALUES (4, 'Boxer-4')
INTO ENGINE_TYPE (Engine_ID, Engine_Description) VALUES (9, 'Boxer-6')
INTO ENGINE_TYPE (Engine_ID, Engine_Description) VALUES (3, 'Diesel')
INTO ENGINE_TYPE (Engine_ID, Engine_Description) VALUES (8, 'Electric')
INTO ENGINE_TYPE (Engine_ID, Engine_Description) VALUES (1, 'Hybrid')
INTO ENGINE_TYPE (Engine_ID, Engine_Description) VALUES (10, 'Inline-4')
INTO ENGINE_TYPE (Engine_ID, Engine_Description) VALUES (5, 'Inline-6')
INTO ENGINE_TYPE (Engine_ID, Engine_Description) VALUES (7, 'V12')
INTO ENGINE_TYPE (Engine_ID, Engine_Description) VALUES (2, 'V6')
INTO ENGINE_TYPE (Engine_ID, Engine_Description) VALUES (6, 'V8')
SELECT 1 FROM DUAL;
-- fabricate-flush


INSERT ALL
INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description) VALUES (1, 'Electric')
INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description) VALUES (2, 'Diesel')
INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description) VALUES (3, 'Petrol')
INTO FUEL_TYPE (Fuel_Type_ID, Fuel_Type_Description) VALUES (4, 'Hybrid')
SELECT 1 FROM DUAL;
-- fabricate-flush


INSERT ALL
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (1, '3', '6', '29.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (2, '6', '4', '39.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (3, '1', '3', '6.89')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (4, '4', '5', '6.29')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (5, '2', '8', '39.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (6, '5', '7', '1.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (7, '3', '2', '2.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (8, '6', '1', '12.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (9, '4', '3', '34.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (10, '2', '6', '39.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (11, '5', '8', '5.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (12, '1', '2', '14.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (13, '5', '5', '12.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (14, '4', '1', '3.49')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (15, '1', '7', '3.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (16, '3', '4', '2.49')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (17, '2', '1', '1.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (18, '6', '4', '2.29')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (19, '2', '3', '4.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (20, '5', '8', '0.89')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (21, '1', '5', '3.29')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (22, '3', '7', '8.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (23, '6', '2', '14.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (24, '4', '6', '2.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (25, '1', '1', '49.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (26, '3', '4', '1.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (27, '6', '3', '4.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (28, '4', '8', '25.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (29, '2', '5', '5.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (30, '5', '7', '18.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (31, '6', '2', '5.49')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (32, '1', '6', '2.49')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (33, '4', '6', '49.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (34, '2', '5', '2.79')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (35, '5', '8', '4.29')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (36, '3', '7', '9.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (37, '5', '3', '39.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (38, '3', '1', '1.69')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (39, '6', '4', '4.49')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (40, '1', '2', '14.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (41, '4', '7', '1.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (42, '2', '6', '1.49')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (43, '1', '1', '169.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (44, '3', '8', '10.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (45, '6', '2', '5.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (46, '4', '3', '29.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (47, '2', '5', '19.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (48, '5', '4', '22.99')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (49, '5', '5', '5.49')
INTO PART (Part_ID, Manufacturer_ID, Category_ID, Price) VALUES (50, '3', '7', '14.99')
SELECT 1 FROM DUAL;
-- fabricate-flush


INSERT ALL
INTO PART_CATEGORY (Category_ID, Category_Description) VALUES (1, 'Transmission')
INTO PART_CATEGORY (Category_ID, Category_Description) VALUES (2, 'Electrical')
INTO PART_CATEGORY (Category_ID, Category_Description) VALUES (3, 'Exhaust')
INTO PART_CATEGORY (Category_ID, Category_Description) VALUES (4, 'Brakes')
INTO PART_CATEGORY (Category_ID, Category_Description) VALUES (5, 'Lighting')
INTO PART_CATEGORY (Category_ID, Category_Description) VALUES (6, 'Fuel System')
INTO PART_CATEGORY (Category_ID, Category_Description) VALUES (7, 'Suspension')
INTO PART_CATEGORY (Category_ID, Category_Description) VALUES (8, 'Wheels & Tires')
SELECT 1 FROM DUAL;
-- fabricate-flush


INSERT ALL
INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description) VALUES (3, 'Bosch')
INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description) VALUES (6, 'Continental')
INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description) VALUES (5, 'Dana Incorporated')
INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description) VALUES (4, 'Denso')
INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description) VALUES (1, 'NGK')
INTO PART_MANUFACTURER (Manufacturer_ID, Manufacturer_Description) VALUES (2, 'Schaeffler')
SELECT 1 FROM DUAL;
-- fabricate-flush


INSERT ALL
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('51', '38', '6')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('11', '6', '2')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('91', '3', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('93', '34', '7')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('19', '17', '2')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('86', '23', '7')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('70', '27', '5')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('72', '20', '5')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('3', '13', '5')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('62', '16', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('42', '32', '3')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('5', '19', '3')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('68', '10', '3')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('63', '30', '6')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('54', '15', '7')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('89', '35', '1')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('60', '21', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('35', '14', '5')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('9', '26', '6')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('30', '39', '6')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('67', '5', '7')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('10', '33', '3')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('23', '50', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('90', '7', '7')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('25', '47', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('57', '1', '1')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('59', '31', '5')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('17', '36', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('13', '4', '7')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('48', '25', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('18', '45', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('45', '18', '6')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('61', '44', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('1', '41', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('8', '48', '9')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('21', '22', '5')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('14', '49', '2')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('88', '2', '1')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('27', '12', '8')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('2', '28', '7')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('78', '37', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('100', '40', '1')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('69', '8', '3')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('38', '11', '5')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('77', '46', '7')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('7', '24', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('50', '29', '6')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('83', '9', '8')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('43', '42', '5')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('82', '43', '6')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('56', '40', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('81', '14', '3')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('55', '33', '11')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('16', '36', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('34', '49', '6')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('71', '10', '6')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('32', '39', '2')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('79', '20', '5')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('15', '24', '5')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('24', '43', '7')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('99', '50', '1')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('29', '27', '2')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('66', '31', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('36', '23', '2')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('22', '25', '5')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('6', '8', '7')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('49', '32', '3')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('12', '44', '7')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('41', '4', '1')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('52', '46', '6')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('40', '15', '7')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('26', '12', '8')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('92', '1', '7')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('31', '2', '5')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('58', '5', '3')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('46', '26', '5')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('95', '42', '5')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('73', '28', '3')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('33', '48', '1')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('97', '38', '3')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('37', '37', '6')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('80', '7', '5')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('87', '17', '2')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('65', '22', '8')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('47', '11', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('85', '47', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('64', '19', '6')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('28', '29', '8')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('84', '35', '7')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('74', '45', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('94', '6', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('44', '34', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('53', '16', '4')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('96', '9', '3')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('98', '3', '3')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('4', '18', '1')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('76', '13', '3')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('20', '30', '2')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('75', '21', '6')
INTO PART_SALE_INFO (Invoice_ID, Part_ID, Quantity) VALUES ('39', '41', '8')
SELECT 1 FROM DUAL;
-- fabricate-flush


INSERT ALL
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (1, '3', '10', TO_DATE('2017-02-19', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (2, '3', '2', TO_DATE('2012-07-05', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (3, '3', '9', TO_DATE('2020-09-17', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (4, '3', '6', TO_DATE('2018-11-14', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (5, '3', '1', TO_DATE('2011-02-23', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (6, '3', '4', TO_DATE('2010-06-29', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (7, '3', '3', TO_DATE('2007-12-07', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (8, '3', '8', TO_DATE('2005-01-25', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (9, '3', '5', TO_DATE('2013-08-01', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (10, '3', '7', TO_DATE('2004-10-21', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (11, '3', '8', TO_DATE('2004-10-19', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (12, '3', '7', TO_DATE('2025-01-27', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (13, '3', '10', TO_DATE('2022-06-16', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (14, '3', '3', TO_DATE('2003-07-25', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (15, '3', '1', TO_DATE('2008-09-28', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (16, '3', '2', TO_DATE('2003-01-30', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (17, '3', '5', TO_DATE('2024-02-03', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (18, '3', '4', TO_DATE('2015-07-18', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (19, '3', '9', TO_DATE('2018-10-10', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (20, '3', '6', TO_DATE('2023-04-08', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (21, '3', '9', TO_DATE('2017-12-12', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (22, '3', '8', TO_DATE('2020-05-01', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (23, '3', '1', TO_DATE('2014-06-29', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (24, '3', '10', TO_DATE('2011-03-26', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (25, '3', '3', TO_DATE('2017-08-13', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (26, '3', '6', TO_DATE('2019-06-25', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (27, '3', '5', TO_DATE('2007-01-05', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (28, '3', '7', TO_DATE('2024-06-07', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (29, '3', '4', TO_DATE('2022-01-07', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (30, '3', '2', TO_DATE('2009-01-03', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (31, '3', '10', TO_DATE('2013-06-29', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (32, '3', '6', TO_DATE('2021-07-08', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (33, '3', '4', TO_DATE('2018-09-26', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (34, '3', '3', TO_DATE('2005-03-11', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (35, '3', '5', TO_DATE('2022-09-22', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (36, '3', '8', TO_DATE('2014-09-13', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (37, '3', '7', TO_DATE('2009-01-09', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (38, '3', '2', TO_DATE('2020-02-07', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (39, '3', '9', TO_DATE('2024-07-10', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (40, '3', '1', TO_DATE('2019-09-07', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (41, '3', '2', TO_DATE('2010-03-06', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (42, '3', '5', TO_DATE('2012-03-27', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (43, '3', '10', TO_DATE('2005-05-11', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (44, '3', '9', TO_DATE('2011-07-21', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (45, '3', '1', TO_DATE('2007-03-19', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (46, '3', '7', TO_DATE('2004-10-24', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (47, '3', '4', TO_DATE('2012-09-04', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (48, '3', '3', TO_DATE('2021-12-02', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (49, '3', '6', TO_DATE('2022-08-07', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (50, '3', '8', TO_DATE('2006-09-08', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (51, '3', '3', TO_DATE('2004-05-01', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (52, '3', '1', TO_DATE('2011-09-11', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (53, '3', '4', TO_DATE('2020-05-29', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (54, '3', '2', TO_DATE('2010-05-21', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (55, '3', '6', TO_DATE('2024-03-22', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (56, '3', '5', TO_DATE('2023-11-05', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (57, '3', '8', TO_DATE('2022-12-24', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (58, '3', '10', TO_DATE('2014-08-15', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (59, '3', '9', TO_DATE('2021-08-05', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (60, '4', '9', TO_DATE('2010-11-10', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (61, '4', '5', TO_DATE('2008-11-05', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (62, '4', '1', TO_DATE('2014-05-15', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (63, '4', '4', TO_DATE('2020-03-05', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (64, '4', '10', TO_DATE('2015-03-25', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (65, '4', '6', TO_DATE('2015-05-05', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (66, '4', '7', TO_DATE('2015-07-01', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (67, '4', '3', TO_DATE('2011-06-07', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (68, '4', '8', TO_DATE('2015-11-13', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (69, '4', '2', TO_DATE('2010-08-07', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (70, '4', '5', TO_DATE('2006-11-16', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (71, '4', '4', TO_DATE('2017-08-12', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (72, '4', '9', TO_DATE('2016-09-23', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (73, '4', '6', TO_DATE('2013-02-02', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (74, '4', '8', TO_DATE('2003-09-09', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (75, '4', '7', TO_DATE('2002-03-21', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (76, '4', '10', TO_DATE('2022-10-07', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (77, '4', '3', TO_DATE('2012-08-27', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (78, '4', '1', TO_DATE('2006-04-03', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (79, '4', '2', TO_DATE('2018-09-07', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (80, '4', '5', TO_DATE('2003-10-06', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (81, '4', '7', TO_DATE('2019-09-03', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (82, '4', '4', TO_DATE('2013-08-10', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (83, '4', '2', TO_DATE('2008-12-02', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (84, '4', '9', TO_DATE('2010-12-24', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (85, '4', '8', TO_DATE('2022-01-17', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (86, '4', '1', TO_DATE('2005-05-21', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (87, '4', '10', TO_DATE('2024-02-23', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (88, '4', '3', TO_DATE('2008-01-26', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (89, '4', '6', TO_DATE('2011-01-29', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (90, '4', '2', TO_DATE('2007-09-21', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (91, '4', '5', TO_DATE('2016-04-05', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (92, '4', '4', TO_DATE('2002-10-12', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (93, '4', '9', TO_DATE('2011-01-10', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (94, '4', '6', TO_DATE('2018-08-29', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (95, '4', '8', TO_DATE('2005-06-27', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (96, '4', '7', TO_DATE('2017-11-11', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (97, '6', '4', TO_DATE('2022-05-06', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (98, '6', '10', TO_DATE('2011-12-01', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (99, '6', '6', TO_DATE('2015-12-23', 'YYYY-MM-DD HH24:MI:SS'))
INTO SALES (Invoice_ID, Customer_ID, Employee_ID, Sales_Date) VALUES (100, '6', '7', TO_DATE('2017-07-29', 'YYYY-MM-DD HH24:MI:SS'))
SELECT 1 FROM DUAL;
-- fabricate-flush


INSERT ALL
INTO TRANSMISSION_TYPE (Transmission_Type_ID, Transmission_Type_Description) VALUES (1, 'Continuously Variable Transmission (CVT)')
INTO TRANSMISSION_TYPE (Transmission_Type_ID, Transmission_Type_Description) VALUES (2, 'Automatic')
INTO TRANSMISSION_TYPE (Transmission_Type_ID, Transmission_Type_Description) VALUES (3, 'Dual-Clutch Transmission (DCT)')
INTO TRANSMISSION_TYPE (Transmission_Type_ID, Transmission_Type_Description) VALUES (4, 'Semi-Automatic')
INTO TRANSMISSION_TYPE (Transmission_Type_ID, Transmission_Type_Description) VALUES (5, 'Direct-Shift Gearbox (DSG)')
INTO TRANSMISSION_TYPE (Transmission_Type_ID, Transmission_Type_Description) VALUES (6, 'Tiptronic')
INTO TRANSMISSION_TYPE (Transmission_Type_ID, Transmission_Type_Description) VALUES (7, 'Manual')
SELECT 1 FROM DUAL;
-- fabricate-flush



                BEGIN
                    FOR r IN (SELECT table_name FROM user_tables) LOOP
                        FOR c IN (SELECT constraint_name FROM user_constraints
                                WHERE table_name = r.table_name
                                AND status = 'DISABLED') LOOP
                            BEGIN
                                EXECUTE IMMEDIATE 'ALTER TABLE "' || r.table_name ||
                                            '" ENABLE CONSTRAINT "' || c.constraint_name || '"';
                            EXCEPTION
                                WHEN OTHERS THEN
                                    DBMS_OUTPUT.PUT_LINE('Error enabling constraint ' ||
                                                    c.constraint_name || ' on table ' ||
                                                    r.table_name || ': ' || SQLERRM);
                            END;
                        END LOOP;
                    END LOOP;
                END;
                /
            