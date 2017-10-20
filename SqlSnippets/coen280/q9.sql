--Query 9
SELECT b.business_id AS b_id, b.name AS b_name, b.review_count AS b_review_count
FROM YelpUser u
JOIN Review r ON u.user_id = r.user_id
JOIN Business b ON b.business_id = r.business_id
WHERE r.rating = 5
GROUP BY u.user_id, b.business_id, b.review_count, b.name
HAVING COUNT(*) > 50
ORDER BY b_review_count DESC, b_name ASC, b_id ASC;
