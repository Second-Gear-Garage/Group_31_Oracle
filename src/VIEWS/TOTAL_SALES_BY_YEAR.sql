CREATE VIEW Total_Sales_By_Year AS
SELECT 
    EXTRACT(YEAR FROM s.Sales_Date) AS Sales_Year,
    COUNT(s.Invoice_ID) AS Total_Sales
FROM 
    SALES s
GROUP BY 
    EXTRACT(YEAR FROM s.Sales_Date);
