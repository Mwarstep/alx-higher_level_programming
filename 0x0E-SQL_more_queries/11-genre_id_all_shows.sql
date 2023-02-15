-- Will list all shows contained in the DB hbtn_0d_tvshows
-- If show has no genre, will display NULL
-- Result will be sorted in ascending order
SELECT s.`title`, g.`genre_id`
	FROM `tv_shows` AS s
		LEFT JOIN `tv_show_genres` AS g
		ON s.`id` = g.`show_id`
	ORDER BY s.`title`, g.`genre_id`;
