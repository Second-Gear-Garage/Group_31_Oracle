CREATE VIEW Cars_By_Body_Type AS
SELECT 
    bt.Type_Description,
    COUNT(c.Car_ID) AS Total_Cars
FROM 
    CAR c
JOIN 
    CAR_BODY_TYPE bt ON c.Body_Type_ID = bt.Body_ID
GROUP BY 
    bt.Type_Description;
