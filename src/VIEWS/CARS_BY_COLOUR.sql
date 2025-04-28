CREATE VIEW Cars_By_Color AS
SELECT 
    col.Colour_Name,
    COUNT(c.Car_ID) AS Total_Cars
FROM 
    CAR c
JOIN 
    COLOUR_TYPE col ON c.Colour_ID = col.Colour_ID
GROUP BY 
    col.Colour_Name;
