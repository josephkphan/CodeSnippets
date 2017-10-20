--Query 5 (FIXED TIES)
SELECT u.user_id AS u_id, u.first_name AS u_first_name, COUNT(DISTINCT(b.state)) AS b_distinct_states
FROM YelpUser u
JOIN Review r ON u.user_id = r.user_id
JOIN Business b ON b.business_id = r.business_id
GROUP BY u.user_id, u.first_name
HAVING COUNT(DISTINCT(b.state)) > 5
ORDER BY b_distinct_states DESC, u_id ASC;
