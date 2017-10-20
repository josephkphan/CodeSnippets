--Query 2 (LOOK OVER)
SELECT b.business_id as b_id, bc.business_category_id as bc_id, b.name as b_name
FROM Business b
INNER JOIN BusinessCategory bc ON b.business_category_id = bc.business_category_id
WHERE b.name LIKE '%Coffee%' AND bc.category_name NOT LIKE '%Coffee%'
ORDER BY b.business_id;
