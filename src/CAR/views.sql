--Parts sales by category

SELECT pc.Category_Description, SUM(psi.Quantity) AS Total_Quantity_Sold,
       SUM(psi.Quantity * p.Price) AS Total_Revenue
FROM PART_SALE_INFO psi
JOIN PART p ON psi.Part_ID = p.Part_ID
JOIN PART_CATEGORY pc ON p.Category_ID = pc.Category_ID
GROUP BY pc.Category_Description
ORDER BY Total_Revenue DESC;

--Top selling parts

SELECT p.Part_ID, pm.Manufacturer_Description, pc.Category_Description,
       SUM(psi.Quantity) AS Total_Quantity_Sold,
       SUM(psi.Quantity * p.Price) AS Total_Revenue
FROM PART_SALE_INFO psi
JOIN PART p ON psi.Part_ID = p.Part_ID
JOIN PART_MANUFACTURER pm ON p.Manufacturer_ID = pm.Manufacturer_ID
JOIN PART_CATEGORY pc ON p.Category_ID = pc.Category_ID
GROUP BY p.Part_ID, pm.Manufacturer_Description, pc.Category_Description
ORDER BY Total_Quantity_Sold DESC;


--SALES with both CARS and PARTS

SELECT s.Invoice_ID, s.Sales_Date, 
       c.FName || ' ' || c.Surname AS Customer_Name,
       e.Emp_Name || ' ' || e.Surname AS Employee_Name,
       COUNT(DISTINCT csi.Car_ID) AS Cars_Sold,
       COUNT(DISTINCT psi.Part_ID) AS Parts_Sold,
       COALESCE(SUM(car.Price), 0) AS Car_Revenue,
       COALESCE(SUM(psi.Quantity * p.Price), 0) AS Parts_Revenue,
       COALESCE(SUM(car.Price), 0) + COALESCE(SUM(psi.Quantity * p.Price), 0) AS Total_Revenue
FROM SALES s
JOIN CUSTOMER c ON s.Customer_ID = c.Customer_ID
JOIN EMPLOYEE e ON s.Employee_ID = e.Employee_ID
LEFT JOIN CAR_SALE_INFO csi ON s.Invoice_ID = csi.Invoice_ID
LEFT JOIN CAR car ON csi.Car_ID = car.Car_ID
LEFT JOIN PART_SALE_INFO psi ON s.Invoice_ID = psi.Invoice_ID
LEFT JOIN PART p ON psi.Part_ID = p.Part_ID
GROUP BY s.Invoice_ID, s.Sales_Date, c.FName, c.Surname, e.Emp_Name, e.Surname
ORDER BY s.Sales_Date DESC;


--Find customers who bought both cars and parts

SELECT c.Customer_ID, c.FName || ' ' || c.Surname AS Customer_Name,
       COUNT(DISTINCT csi.Car_ID) AS Cars_Purchased,
       COUNT(DISTINCT psi.Part_ID) AS Parts_Purchased
FROM CUSTOMER c
JOIN SALES s ON c.Customer_ID = s.Customer_ID
LEFT JOIN CAR_SALE_INFO csi ON s.Invoice_ID = csi.Invoice_ID
LEFT JOIN PART_SALE_INFO psi ON s.Invoice_ID = psi.Invoice_ID
GROUP BY c.Customer_ID, c.FName, c.Surname
HAVING COUNT(DISTINCT csi.Car_ID) > 0 AND COUNT(DISTINCT psi.Part_ID) > 0
ORDER BY Cars_Purchased DESC, Parts_Purchased DESC;


--Yearly sales trend for car manufacturers
SELECT m.Manufacturer_Description, 
       EXTRACT(YEAR FROM s.Sales_Date) AS Year,
       COUNT(*) AS Cars_Sold,
       SUM(c.Price) AS Total_Revenue
FROM SALES s
JOIN CAR_SALE_INFO csi ON s.Invoice_ID = csi.Invoice_ID
JOIN CAR c ON csi.Car_ID = c.Car_ID
JOIN CAR_MANUFACTURER m ON c.Manufacturer_ID = m.Manufacturer_ID
GROUP BY m.Manufacturer_Description, EXTRACT(YEAR FROM s.Sales_Date)
ORDER BY m.Manufacturer_Description, Year;

--Average time between purchases for customers
WITH customer_purchases AS (
    SELECT Customer_ID, Sales_Date,
           LEAD(Sales_Date) OVER (PARTITION BY Customer_ID ORDER BY Sales_Date) AS Next_Purchase_Date
    FROM SALES
)
SELECT c.Customer_ID, 
       c.FName || ' ' || c.Surname AS Customer_Name,
       AVG(cp.Next_Purchase_Date - cp.Sales_Date) AS Avg_Days_Between_Purchases,
       COUNT(*) AS Total_Purchases
FROM customer_purchases cp
JOIN CUSTOMER c ON cp.Customer_ID = c.Customer_ID
WHERE cp.Next_Purchase_Date IS NOT NULL
GROUP BY c.Customer_ID, c.FName, c.Surname
HAVING COUNT(*) > 1
ORDER BY Avg_Days_Between_Purchases;

--Employee performance by department

SELECT 
    d.Department_Name,
    e.Employee_ID, 
    e.Emp_Name || ' ' || e.Surname AS Employee_Name,
    COUNT(DISTINCT s.Invoice_ID) AS Total_Sales,
    SUM(COALESCE(c.Price, 0)) AS Car_Revenue,
    SUM(COALESCE(psi.Quantity * p.Price, 0)) AS Parts_Revenue,
    SUM(COALESCE(c.Price, 0)) + SUM(COALESCE(psi.Quantity * p.Price, 0)) AS Total_Revenue
FROM EMPLOYEE e
JOIN DEPARTMENT d ON e.Department_ID = d.Department_ID
LEFT JOIN SALES s ON e.Employee_ID = s.Employee_ID
LEFT JOIN CAR_SALE_INFO csi ON s.Invoice_ID = csi.Invoice_ID
LEFT JOIN CAR c ON csi.Car_ID = c.Car_ID
LEFT JOIN PART_SALE_INFO psi ON s.Invoice_ID = psi.Invoice_ID
LEFT JOIN PART p ON psi.Part_ID = p.Part_ID
GROUP BY d.Department_Name, e.Employee_ID, e.Emp_Name, e.Surname
ORDER BY d.Department_Name, Total_Revenue DESC;

--Mileage statistics by manufacturer
SELECT m.Manufacturer_Description,
       MIN(c.Mileage) AS Min_Mileage,
       ROUND(AVG(c.Mileage)) AS Avg_Mileage,
       MAX(c.Mileage) AS Max_Mileage
FROM CAR c
JOIN CAR_MANUFACTURER m ON c.Manufacturer_ID = m.Manufacturer_ID
GROUP BY m.Manufacturer_Description
ORDER BY Avg_Mileage;

--Price to mileage ratio (value indicator)
SELECT Car_ID, Price, Mileage, 
       ROUND(Price/NULLIF(Mileage, 0), 2) AS Price_Per_Mile
FROM CAR
ORDER BY Price_Per_Mile DESC;


--Price segmentation
SELECT 
    CASE 
        WHEN Price < 10000 THEN 'Under R10k'
        WHEN Price BETWEEN 10000 AND 29999 THEN 'R10k-R30k'
        WHEN Price BETWEEN 30000 AND 49999 THEN 'R30k-R50k'
        WHEN Price BETWEEN 50000 AND 99999 THEN 'R50k-r100k'
        WHEN Price BETWEEN 100000 AND 499999 THEN 'R100k-R500k'
        ELSE 'Over R500k'
    END AS Price_Range,
    COUNT(*) AS Car_Count,
    ROUND(AVG(Mileage)) AS Avg_Mileage,
    ROUND(AVG(C_Year)) AS Avg_Year
FROM CAR
GROUP BY 
    CASE 
        WHEN Price < 10000 THEN 'Under R10k'
        WHEN Price BETWEEN 10000 AND 29999 THEN 'R10k-R30k'
        WHEN Price BETWEEN 30000 AND 49999 THEN 'R30k-R50k'
        WHEN Price BETWEEN 50000 AND 99999 THEN 'R50k-R100k'
        WHEN Price BETWEEN 100000 AND 499999 THEN 'R100k-R500k'
        ELSE 'Over R500k'
    END
ORDER BY MIN(Price);


--PARTS_MANUFATURER_PRICE_CATEGORY
-- Segment parts by price and join with manufacturer and category info
WITH part_segmentation AS (
    SELECT 
        p.Part_ID,
        pm.Manufacturer_Description AS Manufacturer,
        pc.Category_Description AS Category,
        p.Price,
        -- Categorize parts into price segments
        CASE 
            WHEN p.Price < 10 THEN 'Under R10'
            WHEN p.Price BETWEEN 10 AND 49.99 THEN 'R10-R50'
            WHEN p.Price BETWEEN 50 AND 99.99 THEN 'R50-R100'
            WHEN p.Price BETWEEN 100 AND 499.99 THEN 'R100-R500'
            WHEN p.Price BETWEEN 500 AND 999.99 THEN 'R500-R1000'
            ELSE 'Over R1000'
        END AS Price_Segment
    FROM PART p
    JOIN PART_MANUFACTURER pm ON p.Manufacturer_ID = pm.Manufacturer_ID
    JOIN PART_CATEGORY pc ON p.Category_ID = pc.Category_ID
),

-- Aggregate part stats by price segment
segment_stats AS (
    SELECT 
        Price_Segment,
        COUNT(*) AS Total_Parts,
        ROUND(AVG(Price), 2) AS Avg_Price,
        MIN(Price) AS Min_Price,
        MAX(Price) AS Max_Price,

        -- Manufacturer breakdown (as percentage of each segment)
        ROUND(SUM(CASE WHEN Manufacturer = 'NGK' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) || '%' AS NGK_Percentage,
        ROUND(SUM(CASE WHEN Manufacturer = 'Schaeffler' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) || '%' AS Schaeffler_Percentage,
        ROUND(SUM(CASE WHEN Manufacturer = 'Bosch' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) || '%' AS Bosch_Percentage,
        ROUND(SUM(CASE WHEN Manufacturer = 'Denso' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) || '%' AS Denso_Percentage,
        ROUND(SUM(CASE WHEN Manufacturer = 'Dana Incorporated' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) || '%' AS Dana_Percentage,
        ROUND(SUM(CASE WHEN Manufacturer = 'Continental' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) || '%' AS Continental_Percentage,

        -- Category breakdown
        ROUND(SUM(CASE WHEN Category = 'Transmission' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) || '%' AS Transmission_Parts,
        ROUND(SUM(CASE WHEN Category = 'Electrical' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) || '%' AS Electrical_Parts,
        ROUND(SUM(CASE WHEN Category = 'Exhaust' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) || '%' AS Exhaust_Parts,
        ROUND(SUM(CASE WHEN Category = 'Brakes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) || '%' AS Brake_Parts,
        ROUND(SUM(CASE WHEN Category = 'Lighting' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) || '%' AS Lighting_Parts,
        ROUND(SUM(CASE WHEN Category = 'Fuel System' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) || '%' AS Fuel_System_Parts,
        ROUND(SUM(CASE WHEN Category = 'Suspension' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) || '%' AS Suspension_Parts,
        ROUND(SUM(CASE WHEN Category = 'Wheels' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) || '%' AS Wheel_Parts
    FROM part_segmentation
    GROUP BY Price_Segment
),

-- Get unique manufacturers per price segment using LISTAGG
manufacturer_summary AS (
    SELECT 
        Price_Segment,
        LISTAGG(Manufacturer, ', ') WITHIN GROUP (ORDER BY Manufacturer) AS Manufacturers_List
    FROM (
        SELECT DISTINCT Price_Segment, Manufacturer
        FROM part_segmentation
    )
    GROUP BY Price_Segment
)

-- Final result combining part statistics and manufacturer list
SELECT 
    s.Price_Segment,
    s.Total_Parts,
    s.Avg_Price,
    s.Min_Price,
    s.Max_Price,
    m.Manufacturers_List,

    -- Manufacturer % breakdown
    s.NGK_Percentage,
    s.Schaeffler_Percentage,
    s.Bosch_Percentage,
    s.Denso_Percentage,
    s.Dana_Percentage,
    s.Continental_Percentage,

    -- Category % breakdown
    s.Transmission_Parts,
    s.Electrical_Parts,
    s.Exhaust_Parts,
    s.Brake_Parts,
    s.Lighting_Parts,
    s.Fuel_System_Parts,
    s.Suspension_Parts,
    s.Wheel_Parts

FROM segment_stats s
JOIN manufacturer_summary m ON s.Price_Segment = m.Price_Segment

-- Custom sort for price segment order
ORDER BY 
    CASE 
        WHEN s.Price_Segment = 'Under R10' THEN 1
        WHEN s.Price_Segment = 'R10-R50' THEN 2
        WHEN s.Price_Segment = 'R50-R100' THEN 3
        WHEN s.Price_Segment = 'R100-R500' THEN 4
        WHEN s.Price_Segment = 'R500-R1000' THEN 5
        ELSE 6
    END;

