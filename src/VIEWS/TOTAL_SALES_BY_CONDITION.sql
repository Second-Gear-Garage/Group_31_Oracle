CREATE VIEW Total_Sales_Amt_By_Condition AS
SELECT 
    con.Condition_ID,
    con.Condition_Description,
    ROUND(SUM(c.Price), -3) AS Total_Sales_Amt
FROM 
    CAR_SALE_INFO cs
JOIN 
    CAR c ON cs.Car_ID = c.Car_ID
JOIN 
    CONDITION con ON c.Condition_ID = con.Condition_ID
GROUP BY 
    con.Condition_ID, con.Condition_Description
ORDER BY 
    Total_Sales_Amt DESC;
