SELECT 
    SUM(CASE
        WHEN productLine = 'Classic Cars' THEN 1
        ELSE 0
    END) AS 'Classic Cars',
    SUM(CASE
        WHEN productLine = 'Motorcycles' THEN 1
        ELSE 0
    END) AS 'Motorcyles',
    SUM(CASE
        WHEN productLine = 'Planes' THEN 1
        ELSE 0
    END) AS 'Planes',
    SUM(CASE
        WHEN productLine = 'Ships' THEN 1
        ELSE 0
    END) AS 'Ships',
    SUM(CASE
        WHEN productLine = 'Trains' THEN 1
        ELSE 0
    END) AS 'Trains',
    SUM(CASE
        WHEN productLine = 'Trucks and Buses' THEN 1
        ELSE 0
    END) AS 'Trucks and Buses',
    SUM(CASE
        WHEN productLine = 'Vintage Cars' THEN 1
        ELSE 0
    END) AS 'Vintage Cars'
FROM
    classicmodels.products;