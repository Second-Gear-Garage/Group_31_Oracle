CREATE VIEW Drive_Type_Abbreviations AS
SELECT 
    Drive_Type_ID,
    Drive_Type_Description,
    REGEXP_SUBSTR(Drive_Type_Description, '\(([^)]+)\)') AS Abbreviation
FROM 
    DRIVE_TYPE;
