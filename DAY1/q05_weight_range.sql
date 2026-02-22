-- 5. Show first name and last name of patients that weight within the range of 100 to 120 (inclusive)

SELECT first_name,last_name
FROM patients
where weight between 100 AND 120;  


--or \./
SELECT
  first_name,
  last_name
FROM patients
WHERE weight >= 100 AND weight <= 120;