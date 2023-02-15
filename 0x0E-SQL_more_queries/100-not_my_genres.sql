-- Will use the hbtn_0d_tvshows DB to list all genres not linked to Dexter
-- Results soreted in Ascending order by genre name
SELECT DISTINCT `name`
  FROM `tv_genres` AS g
	INNER JOIN `tv_shows_genres` AS s
	ON g.`id` = s.`genre_id`

	INNER JOIN `tv_shows` AS t
	ON s.`show_id` = t.`id`
	WHERE g.`name` NOT IN
		(SELECT `name`
			FROM `tv_genres` AS g
				INNER JOIN `tv_show_genres` AS s
				ON g.`id` = s.`genre_id`

				INNER JOIN `tv_shows` AS t
				ON s.`show_id` = t.`id`
				WHERE t.`title` = "Dexter")
  ORDER BY g.`name`;
