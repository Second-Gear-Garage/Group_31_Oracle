
SELECT 
  Car_ID,
  C_Year,
  Mileage
FROM 
  CAR
WHERE 
  Mileage > (
    SELECT AVG(Mileage) 
    FROM CAR c2 
    WHERE c2.C_Year = CAR.C_Year
  )
ORDER BY 
  C_Year, Mileage DESC;


SELECT 
  c.Customer_ID,
  c.FName,
  c.Surname
FROM 
  CUSTOMER c
WHERE 
  EXISTS (
    SELECT 1 
    FROM SALES s 
    JOIN CAR_SALE_INFO csi ON s.Invoice_ID = csi.Invoice_ID 
    WHERE s.Customer_ID = c.Customer_ID
  )
  AND EXISTS (
    SELECT 1 
    FROM SALES s 
    JOIN PART_SALE_INFO psi ON s.Invoice_ID = psi.Invoice_ID 
    WHERE s.Customer_ID = c.Customer_ID
  );


SELECT 
  TO_CHAR(s.Sales_Date, 'YYYY-MM') AS Sales_Month,
  SUM(p.Price * psi.Quantity) AS Monthly_Revenue,
  LAG(SUM(p.Price * psi.Quantity)) OVER (ORDER BY TO_CHAR(s.Sales_Date, 'YYYY-MM')) AS Previous_Month_Revenue,
  ROUND(
    (SUM(p.Price * psi.Quantity) - LAG(SUM(p.Price * psi.Quantity)) OVER (ORDER BY TO_CHAR(s.Sales_Date, 'YYYY-MM')))
    / NULLIF(LAG(SUM(p.Price * psi.Quantity)) OVER (ORDER BY TO_CHAR(s.Sales_Date, 'YYYY-MM')), 0) * 100, 2
  ) AS Growth_Percentage
FROM 
  SALES s
  JOIN PART_SALE_INFO psi ON s.Invoice_ID = psi.Invoice_ID
  JOIN PART p ON psi.Part_ID = p.Part_ID
GROUP BY 
  TO_CHAR(s.Sales_Date, 'YYYY-MM')
ORDER BY 
  Sales_Month;


SELECT 
  c.Car_ID,
  COUNT(csi.Invoice_ID) AS Times_Sold
FROM 
  CAR c
  JOIN CAR_SALE_INFO csi ON c.Car_ID = csi.Car_ID
GROUP BY 
  c.Car_ID
ORDER BY 
  Times_Sold DESC
FETCH FIRST 3 ROWS ONLY;


SELECT 
  pc.Category_Description,
  ROUND(AVG(p.Price), 2) AS Average_Price
FROM 
  PART p
  JOIN PART_CATEGORY pc ON p.Category_ID = pc.Category_ID
GROUP BY 
  pc.Category_Description
ORDER BY 
  Average_Price DESC;


SELECT 
  e.Employee_ID,
  e.Emp_Name,
  e.Surname
FROM 
  EMPLOYEE e
WHERE 
  NOT EXISTS (
    SELECT 1 
    FROM SALES s 
    WHERE s.Employee_ID = e.Employee_ID 
      AND s.Sales_Date >= ADD_MONTHS(SYSDATE, -6)
  );


SELECT 
  e.Employee_ID,
  e.Emp_Name,
  e.Surname,
  SUM(p.Price * psi.Quantity) AS Total_Revenue
FROM 
  EMPLOYEE e
  JOIN SALES s ON e.Employee_ID = s.Employee_ID
  JOIN PART_SALE_INFO psi ON s.Invoice_ID = psi.Invoice_ID
  JOIN PART p ON psi.Part_ID = p.Part_ID
GROUP BY 
  e.Employee_ID, e.Emp_Name, e.Surname
ORDER BY 
  Total_Revenue DESC;


SELECT 
  c.Car_ID,
  c.C_Year,
  c.Price
FROM 
  CAR c
WHERE 
  NOT EXISTS (
    SELECT 1 
    FROM CAR_SALE_INFO csi 
    WHERE c.Car_ID = csi.Car_ID
  );


SELECT 
  pc.Category_Description,
  p.Part_ID,
  p.Part_Description,
  SUM(psi.Quantity) AS Total_Sold
FROM 
  PART p
  JOIN PART_CATEGORY pc ON p.Category_ID = pc.Category_ID
  JOIN PART_SALE_INFO psi ON p.Part_ID = psi.Part_ID
GROUP BY 
  pc.Category_Description, p.Part_ID, p.Part_Description
HAVING 
  SUM(psi.Quantity) = (
    SELECT 
      MAX(SUM(psi2.Quantity))
    FROM 
      PART p2
      JOIN PART_SALE_INFO psi2 ON p2.Part_ID = psi2.Part_ID
    WHERE 
      p2.Category_ID = p.Category_ID
    GROUP BY 
      p2.Part_ID
  );


SELECT 
  c.Customer_ID,
  c.FName,
  c.Surname,
  ROUND(AVG(Days_Between), 2) AS Avg_Days_Between_Purchases
FROM (
  SELECT 
    s.Customer_ID,
    s.Sales_Date,
    LAG(s.Sales_Date) OVER (PARTITION BY s.Customer_ID ORDER BY s.Sales_Date) AS Previous_Sale_Date,
    s.Sales_Date - LAG(s.Sales_Date) OVER (PARTITION BY s.Customer_ID ORDER BY s.Sales_Date) AS Days_Between
  FROM 
    SALES s
) sales_diff
JOIN CUSTOMER c ON sales_diff.Customer_ID = c.Customer_ID
WHERE 
  Days_Between IS NOT NULL
GROUP BY 
  c.Customer_ID, c.FName, c.Surname
ORDER BY 
  Avg_Days_Between_Purchases;

