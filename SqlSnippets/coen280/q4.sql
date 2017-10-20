--Query 4 (FIXED TIES)
SELECT b.business_id AS b_id, b.name AS b_name, AVG(r.rating) AS r_rating, b.review_count AS b_review_count
FROM Business b
JOIN BusinessCategory bc ON b.business_category_id = bc.business_category_id
JOIN Review r ON b.business_id = r.business_id
WHERE bc.category_name = 'Breakfast and Brunch'
GROUP BY b.name, b.review_count, b.business_id
ORDER BY r_rating DESC, b_review_count DESC, b_id ASC;
