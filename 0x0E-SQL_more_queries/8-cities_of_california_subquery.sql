-- Will list all the cities of California from the DB hbtn_0d_usa
-- Results sorted in ascending order
SELECT `id`, `name`
	FROM `cities`
	WHERE `state_id` IN
(SELECT `id`
	FROM `states`
	WHERE `name` = "California")
ORDER BY `id`;
