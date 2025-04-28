CREATE VIEW Total_Sales_By_Employee AS
SELECT 
    e.Employee_ID,
    e.Emp_Name,
    e.Surname,
    COUNT(s.Invoice_ID) AS Total_Sales
FROM 
    SALES s
JOIN 
    EMPLOYEE e ON s.Employee_ID = e.Employee_ID
GROUP BY 
    e.Employee_ID, e.Emp_Name, e.Surname;
