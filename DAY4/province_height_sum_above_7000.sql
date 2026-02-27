
-- Show the province_id(s), sum of height; where the total sum of its patient's height is greater than or equal to 7,000.

select province_id,
       sum(height) AS sum_height
from patients
group by province_id
having SUM(height) >=7000;


--or

SELECT
  province_id,
  SUM(height) AS sum_height
FROM patients
GROUP BY province_id
HAVING sum_height >= 7000;

--or

select * from (select province_id, SUM(height) as sum_height FROM patients group by province_id) where sum_height >= 7000;