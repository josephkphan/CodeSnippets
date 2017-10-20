--Query 8
SELECT b.business_id AS b_id, b.name AS b_name, b.review_count AS b_review_count
FROM Business b
INNER JOIN Review r ON b.business_id = r.business_id
WHERE b.state = 'California'
GROUP BY b.business_id, b.name, b.review_count
HAVING AVG(r.rating) = 5
ORDER BY b_review_count DESC, b_id ASC;
