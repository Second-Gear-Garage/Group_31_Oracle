CREATE VIEW Total_Sales_By_Customer AS
SELECT 
    c.Customer_ID,
    c.FName,
    c.Surname,
    COUNT(s.Invoice_ID) AS Total_Sales
FROM 
    SALES s
JOIN 
    CUSTOMER c ON s.Customer_ID = c.Customer_ID
GROUP BY 
    c.Customer_ID, c.FName, c.Surname
ORDER BY 
    TOTAL_SALES DESC;

