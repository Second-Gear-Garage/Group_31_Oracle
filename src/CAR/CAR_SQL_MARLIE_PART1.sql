/*Some SQL statements regarding CARS*/

/*Linear regression: Price influenced by millage for all the cars
Assume normality of errors and constant variance
Yi(hat)= B0(hat) + X1iB1(hat)
Where Y(hat)-> Estimated Price
      X1-> Mileage
      i= 1,2,...,100
      B0-> Intercept
      B1-> Slope*/
SELECT 
  Car_ID,
  C_Year,
  Mileage,
  Price,
  REGR_SLOPE(Price, Mileage) OVER (PARTITION BY C_Year) AS slope,
  REGR_INTERCEPT(Price, Mileage) OVER (PARTITION BY C_Year) AS intercept,
  REGR_R2(Price, Mileage) OVER (PARTITION BY C_Year) AS r_squared,
  REGR_COUNT(Price, Mileage) OVER (PARTITION BY C_Year) AS sample_size,
  REGR_AVGX(Price, Mileage) OVER (PARTITION BY C_Year) AS avg_mileage,
  REGR_AVGY(Price, Mileage) OVER (PARTITION BY C_Year) AS avg_price
FROM 
  CAR
ORDER BY 
  C_Year, Car_ID;
/*R_Squared -> determines the proportion of variance in the dependent variable that can be explained by the independent variable
  R-squared values range from 0 to 1
  A value closer to 1 suggests that the model explains a larger portion of the variation in the dependent variable. 
  R-squared value closer to 1 is generally preferred because it indicates a better fit between the model and the data*/


/*Join manufacturer with car*/
SELECT 
  c.Car_ID,
  cm.Manufacturer_Description,
  c.C_Year,
  c.Price,
  c.Mileage
FROM 
  CAR c
JOIN 
  CAR_MANUFACTURER cm ON c.Manufacturer_ID = cm.Manufacturer_ID
ORDER BY 
  c.Car_ID;

/*Show cars between the years 2000 and 2010*/
SELECT 
  Car_ID,
  C_Year,
  Price,
  Mileage
FROM 
  CAR
WHERE 
  C_Year BETWEEN 2000 AND 2010
ORDER BY 
  C_Year, Car_ID;
  

/*Calculate the average mileage per year the cars have driven*/
SELECT 
  Car_ID,
  Mileage,
  C_Year,
  ROUND(Mileage / (EXTRACT(YEAR FROM SYSDATE) - C_Year)) AS Average_Mileage_Per_Year
FROM 
  CAR
WHERE 
  C_Year < EXTRACT(YEAR FROM SYSDATE)  /*Avoid division by zero*/
ORDER BY 
  Average_Mileage_Per_Year;
  
/*Group the cars by colour having a minimum mileage < 100000*/
SELECT 
  Colour_ID,
  MIN(Mileage) AS Min_Mileage,
  COUNT(*) AS Car_Count
FROM 
  CAR
GROUP BY 
  Colour_ID
HAVING 
  MIN(Mileage) < 100000;
  
/*Slect the cars with a price that is grater than the average price*/
SELECT 
  Car_ID,
  Price
FROM
  CAR
WHERE
  Price > (SELECT AVG(Price) FROM CAR );
  
  
/*Queries regarding the specific reports on the SCOPE*/
/*Summary of sales per time period*/
SELECT 
  TO_CHAR(s.Sales_Date, 'YYYY-MM') AS TheMonth,
  COUNT(DISTINCT s.Invoice_ID) AS Total_Sales,
  SUM(p.Price * psi.Quantity) AS Total_Revenue
FROM 
  SALES s
  JOIN PART_SALE_INFO psi ON s.Invoice_ID = psi.Invoice_ID
  JOIN PART p ON psi.Part_ID = p.Part_ID
GROUP BY 
  TO_CHAR(s.Sales_Date, 'YYYY-MM')
ORDER BY 
  TheMonth;

  
/*Inventory stock levels and changes*/

/*Customer purchasing trends*/
SELECT 
  c.Customer_ID,
  COUNT(DISTINCT s.Invoice_ID) AS Total_Orders,
  SUM(p.Price * psi.Quantity) AS Total_Spent,
  MAX(s.Sales_Date) AS Last_Purchase_Date
FROM 
  CUSTOMER c
  JOIN SALES s ON c.Customer_ID = s.Customer_ID
  JOIN PART_SALE_INFO psi ON s.Invoice_ID = psi.Invoice_ID
  JOIN PART p ON psi.Part_ID = p.Part_ID
GROUP BY 
  c.Customer_ID
ORDER BY 
  Total_Spent DESC;

/*Monthly sales revenue*/
SELECT 
  EXTRACT(YEAR FROM Sales_Date) AS TheYear,
  EXTRACT(MONTH FROM Sales_Date) AS TheMonth,
  SUM(p.Price * psi.Quantity) AS Monthly_Revenue
FROM 
  SALES s
  JOIN PART_SALE_INFO psi ON s.Invoice_ID = psi.Invoice_ID
  JOIN PART p ON psi.Part_ID = p.Part_ID
GROUP BY 
  EXTRACT(YEAR FROM Sales_Date), EXTRACT(MONTH FROM Sales_Date)
ORDER BY 
  TheYear, TheMonth;
  
/*Employee performance tracking*/
SELECT 
  e.Employee_ID,
  e.EMP_NAME || ' ' || e.SURNAME AS Employee_Name,
  COUNT(DISTINCT s.Invoice_ID) AS Invoices_Handled,
  SUM(p.Price * psi.Quantity) AS Revenue_Generated
FROM 
  EMPLOYEE e
  JOIN SALES s ON e.Employee_ID = s.Employee_ID
  JOIN PART_SALE_INFO psi ON s.Invoice_ID = psi.Invoice_ID
  JOIN PART p ON psi.Part_ID = p.Part_ID
GROUP BY 
  e.Employee_ID, e.EMP_NAME, e.SURNAME
ORDER BY 
  Revenue_Generated DESC;




