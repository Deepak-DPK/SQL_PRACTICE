-- 7. Show first name, last name, and the **full** province name of each patient. -->

SELECT 
  P.first_name, 
  P.last_name, 
  C.province_name
FROM patients AS P
JOIN province_names AS C 
  ON P.province_id = C.province_id;
