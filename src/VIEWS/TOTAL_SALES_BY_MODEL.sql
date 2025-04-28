CREATE VIEW Total_Sales_By_Model AS
SELECT 
    c.Manufacturer_ID,
    cm.Manufacturer_Description,
    COUNT(cs.Car_ID) AS Total_Sales
FROM 
    CAR_SALE_INFO cs
JOIN 
    CAR c ON cs.Car_ID = c.Car_ID
JOIN 
    CAR_MANUFACTURER cm ON c.Manufacturer_ID = cm.Manufacturer_ID
GROUP BY 
    c.Manufacturer_ID, cm.Manufacturer_Description;
