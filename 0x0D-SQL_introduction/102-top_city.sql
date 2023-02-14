-- Imports in hbtn_0c_0 database thi s table dump
-- Will display avg temp in July and Aug
SELECT city, AVG(value) AS avg_temp FROM temperatures WHERE month=8 GROUP BY city ORDER BY avg_temp DESC LIMIT 3;
