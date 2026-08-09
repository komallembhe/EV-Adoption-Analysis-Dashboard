DROP TABLE IF EXISTS public."EV_DATASET";

CREATE TABLE public."EV_DATASET" (
    vehicle_id INT,
    brand VARCHAR(100),
    model VARCHAR(100),
    vehicle_type VARCHAR(50),
    state VARCHAR(50),
    city VARCHAR(50),
    model_year INT,
    registration_date DATE,
    battery_capacity_kwh INT,
    electric_range_km INT,
    charging_time_hours DECIMAL(4,1),
    price INT,
    fast_charging VARCHAR(50)
);

SELECT * FROM public."EV_DATASET";

SELECT COUNT(*) FROM public."EV_DATASET";

SELECT brand, COUNT(*)
FROM public."EV_DATASET"
GROUP BY brand;

SELECT COUNT (*) AS total_records FROM public."EV_DATASET";

SELECT * FROM public."EV_DATASET"
LIMIT 10;

SELECT COUNT (*) AS total_vehicles FROM public."EV_DATASET";

SELECT brand, COUNT(*) AS total_vehicles
FROM public."EV_DATASET"
GROUP BY brand
ORDER BY total_vehicles DESC;

SELECT state, COUNT(*) AS total_vehicles
FROM public."EV_DATASET"
GROUP BY state
ORDER BY total_vehicles DESC;

SELECT vehicle_type, COUNT(*) AS total
FROM public."EV_DATASET"
GROUP BY vehicle_type
ORDER BY total DESC;

SELECT ROUND(AVG(electric_range_km),2) AS avg_range
FROM public."EV_DATASET";

SELECT brand,model,price
FROM public."EV_DATASET"
ORDER BY price DESC
LIMIT 10;

SELECT model_year, COUNT(*) AS total
FROM public."EV_DATASET"
GROUP BY model_year
ORDER BY model_year;

