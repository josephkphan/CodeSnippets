-- query 7 --
SELECT r.user_id as u_id, SUM(r.count_useful) AS r_count_userful, u.first_name as u_first_name
FROM Review r
JOIN YelpUser u ON u.user_id = r.user_id
GROUP BY r.user_id, u.first_name
ORDER BY r_count_userful DESC;
