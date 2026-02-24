-- Active: 1769535966781@@127.0.0.1@3306@HospitalDB

-- Show patient_id and first_name from patients where their first_name start and ends with 's' and is at least 6 characters long.

SELECT
  patient_id,
  first_name
FROM patients
WHERE
  first_name LIKE 's%s'
  AND LENGTH(first_name) >= 6;

  --or

  SELECT
  patient_id,
  first_name
FROM patients
WHERE first_name LIKE 's____%s';

--or

SELECT
  patient_id,
  first_name
FROM patients
where
  first_name like 's%'
  and first_name like '%s'
  and len(first_name) >= 6;