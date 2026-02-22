
-- 4. Show first name of patients that start with the letter 'C’

SELECT first_name
FROM patients
where first_name LIKE 'C%';

--or \/

SELECT first_name
FROM patients
WHERE substring(first_name, 1, 1) = 'C'