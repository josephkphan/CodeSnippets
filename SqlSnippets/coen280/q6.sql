--Query 6 (FIXED TIES)
SELECT b.business_id AS b_id, b.name AS b_name, AVG(r.rating) as r_score, b.review_count AS b_review_count
FROM Business b
JOIN Review r ON b.business_id = r.business_id
JOIN BusinessCategory bc ON bc.business_category_id = b.business_category_id
WHERE b.city = 'San Jose' AND b.state = 'CA' AND bc.category_name = 'Burgers'
GROUP BY b.business_id, b.review_count, b.name
ORDER BY r_score DESC;
