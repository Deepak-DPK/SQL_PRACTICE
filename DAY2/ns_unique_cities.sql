-- Show unique patient cities in province_id 'NS'.
SELECT DISTINCT city AS unique_city
FROM patients
WHERE province_id = 'NS';