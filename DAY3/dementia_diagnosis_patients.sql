-- Show patient_id, first_name, last_name from patients whos diagnosis is 'Dementia'.

-- Primary diagnosis is stored in the admissions table.

select p.patient_id,p.first_name,p.last_name
FROM patients p
JOIN admissions a 
ON a.patient_id = p.patient_id
WHERE diagnosis = 'Dementia';

--or

SELECT
  patient_id,
  first_name,
  last_name
FROM patients p
WHERE 'Dementia' IN (
    SELECT diagnosis
    FROM admissions
    WHERE admissions.patient_id = p.patient_id
  );


--or 
SELECT
  patient_id,
  first_name,
  last_name
FROM patients
WHERE patient_id IN (
    SELECT patient_id
    FROM admissions
    WHERE diagnosis = 'Dementia'
  ); 


--0r

SELECT
  patients.patient_id,
  first_name,
  last_name
FROM patients
  JOIN admissions ON admissions.patient_id = patients.patient_id
WHERE diagnosis = 'Dementia';