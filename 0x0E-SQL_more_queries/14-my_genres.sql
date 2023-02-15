-- Will Use the hbtn_0d_tvshows DB to list all genres of Dexter
-- Results will be sorted in ascending order by genre name
SELECT g.`name`
  FROM `tv_genres` AS g
	INNER JOIN `tv_show_genres` AS s
	ON g.`id` = s.`genre_id`

	INNER JOIN `tv_shows` AS t
	ON t.`id` = s.`show_id`
	WHERE t.`title` = "Dexter"
  ORDER BY g.`name`;
