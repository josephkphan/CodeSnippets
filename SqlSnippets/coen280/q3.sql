--Query 3
SELECT b.state AS b_state, b.business_id AS b_id, b.name AS b_name, MAX(b.review_count) AS b_max_review_count
FROM Business b JOIN BusinessCategory bc
ON b.business_category_id = bc.business_category_id
GROUP BY b.business_id, b.name, b.state
ORDER BY b_state, b_id;
