-- Statistiche durata viaggi
-- Trip duration statistics

SELECT 
    member_casual,
    ROUND(AVG(trip_duration_min),2) AS avg_duration_min, -- durata media dei viaggi (average)
    ROUND(MIN(trip_duration_min),2) AS min_duration_min, -- viaggio più corto (shorter)
    ROUND(MAX(trip_duration_min),2) AS max_duration_min, -- viaggio maggiore (longer)
    COUNT(*) AS total_rides
FROM trips
WHERE trip_duration_min > 0  -- evitiamo valori negativi o zero
GROUP BY member_casual;
