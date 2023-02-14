-- Imports in hbtn_0c_0 DB this table dump
-- Will display the max temp of each state
SELECT state, MAX(value) AS max_temp FROM temperatures GROUP BY state ORDER BY state;
