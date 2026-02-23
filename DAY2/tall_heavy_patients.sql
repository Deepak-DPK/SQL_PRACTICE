-- Show first_name, last_name, and birth_date of patients with height > 160 and weight > 70.
SELECT
  first_name,
  last_name,
  birth_date
FROM patients
WHERE height > 160
  AND weight > 70;