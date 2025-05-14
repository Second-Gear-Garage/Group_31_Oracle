SELECT * FROM (
    SELECT 
        c.Car_ID,
        cm.Manufacturer_Description AS Manufacturer,
        c.Price,
        c.Mileage,
        ROUND(c.Price/NULLIF(c.Mileage, 0), 2) AS Price_Per_Mile
    FROM 
        CAR c
    JOIN 
        CAR_MANUFACTURER cm ON c.Manufacturer_ID = cm.Manufacturer_ID
    WHERE 
        c.Mileage > 0  -- Exclude cars with zero mileage to avoid division issues
    ORDER BY 
        Price_Per_Mile DESC
) WHERE ROWNUM <= 50