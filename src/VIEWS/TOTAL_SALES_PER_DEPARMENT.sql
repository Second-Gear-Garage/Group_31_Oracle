CREATE VIEW Total_Sales_Amt_By_Dept AS
SELECT 
    e.Department_ID,
    d.Department_Name,
    ROUND(SUM(p.Price * psi.Quantity), -3) AS Total_Sales_Amt
FROM 
    SALES s
JOIN 
    EMPLOYEE e ON s.Employee_ID = e.Employee_ID
JOIN 
    DEPARTMENT d ON e.Department_ID = d.Department_ID
JOIN 
    PART_SALE_INFO psi ON s.Invoice_ID = psi.Invoice_ID
JOIN 
    PART p ON psi.Part_ID = p.Part_ID
GROUP BY 
    e.Department_ID, d.Department_Name
ORDER BY 
    Total_Sales_Amt DESC;
