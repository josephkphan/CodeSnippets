CREATE TABLE YelpUser (
    yelp_user_id int,
    birthdate varchar(255),
    birth_place varchar(255),
    email_id int,
    profile_pic int,
    gender varchar(255),
    first_name varchar(255),
    last_name varchar(255),

    PRIMARY KEY(yelp_user_id)
);

CREATE TABLE YelpFriend(
    yelp_friend_id int NOT NULL,
    compliment varchar(255), -- Can be NULL
    marked_helpful int, -- Acts as a boolean
    voted_positive varchar(255), -- Acts as a boolean -- positive = funny/cool/helpful

    yelp_id int,

    FOREIGN KEY (yelp_id) REFERENCES YelpUser(yelp_id)
);

CREATE TABLE YelpUserReview(
    review_id int,
    yelp_user_id int,

    FOREIGN KEY (review_id) REFERENCES Review(review_id),
    FOREIGN KEY (yelp_user_id) REFERENCES YelpUser(yelp_user_id)
);

CREATE TABLE Review (
    review_id int,
    rating int,
    public_date varchar(255),
    recommended int NOT NULL, --acts as boolean
    marked_helpful varchar(255),

    yelp_user_id int,
    business_id, int

    PRIMARY KEY (review_id),
    FOREIGN KEY (yelp_user_id) REFERENCES YelpUser(yelp_user_id),
    FOREIGN KEY (business_id) REFERENCES Business(business_id)
);

CREATE TABLE ReviewContent(
    review_content_id int,
    review_id int,
    content_type varchar(255) NOT NULL,   -- decides whether content is a text or photo
    content_text varchar(255),
    content_photo varchar(255),

    review_id int,

    PRIMARY KEY (review_content_id),
    FOREIGN KEY (review_id) REFERENCES Review(review_id),
);

CREATE TABLE MarkedReview(
    marked_helpful int, -- Acts as a boolean

    yelp_user_id int,
    review_id int,

    FOREIGN KEY (yelp_user_id) REFERENCES YelpUser(yelp_user_id),
    FOREIGN KEY (review_id) REFERENCES Review(review_id),
);


CREATE TABLE Business (
    business_id int,
    business_name varchar(255),
    phone_number varchar(255),
    city varchar(255),
    state varchar(255),
    review_count int,

    business_category_id,

    PRIMARY KEY (business_id),
    FOREIGN KEY (business_category_id) REFERENCES BusinessCategory(business_category_id),
);

CREATE TABLE BusinessCategory(
    business_category_id int,
    category_name varchar(255),
    category_type varchar(255) NOT NULL,

    business_id int,

    PRIMARY KEY (business_category_id)
    FOREIGN KEY (business_id) REFERENCES Business(business_id)
);

CREATE TABLE BusinessPhoto(
    business_photo_id int,
    photo_description varchar (255),
    location varchar (255),

    business_id int,

    PRIMARY KEY (business_photo_id),
    FOREIGN KEY (business_id) REFERENCES Business(business_id)
);


--------------------------------------------------------------------

-- Query 1 --
SELECT Count(*)
FROM Business
WHERE state="CA"

-- Query 2 --
SELECT b.business_id AS b_id, b.name AS business_name, bc.business_category_id AS bc_id
FROM Business b
INNER JOIN BusinessCategory bc ON b.business_id = bc.business_id
WHERE b.name LIKE "%Coffee%" AND NOT b.business_category_id LIKE "%Coffee%"
ORDER BY b_id ASC

-- Query 3 --
SELECT b.business_id AS b_id, b.business_name AS name, MAX(b.review_count) AS review_count, b.state AS state,
FROM Business b
INNER JOIN BusinessCategory bc ON b.business_id = bc.business_id
GROUP BY state
ORDER BY state ASC

-- query 4 --
SELECT b.business_id AS b_id, b.business_name AS name, b.review_count AS number_of_reviews, AVG(r.rating) as avg_rating, bc.category_name AS category_name
FROM Business b,
INNER JOIN Review r ON b.business_id = r.business_id
INNER JOIN BusinessCategory bc ON b.business_id = bc.business_id
GROUP BY b_id
WHERE category_name = "Breakfast & Brunch"
ORDER BY avg_rating DESC
LIMIT 10

-- NOTE-- DOESN'T CONSIDER TIE BREAKS YET

-- query 5 --
SELECT u.yelp_user_id AS uid, u.first_name AS first_name, u.last_name AS last_name, COUNT(DISTINCT(b.state)) AS distinct_states_count
FROM Review r
INNER JOIN YelpUser u ON r.yelp_user_id = u.yelp_user_id
INNER JOIN Business b ON r.business_id = b.business_id
GROUP BY uid
WHERE distinct_states_count > 5
ORDER BY distinct_states_count desc

-- query 6 --
SELECT  b.business_id AS b_id, b.business_name AS name, AVG(r.rating) AS score, b.review_count AS traveler_reviews_received, bc.category_name AS category_name, b.city AS city, b.state AS state
FROM Business b
INNER JOIN Review r ON r.business_id = b.business_id
INNER JOIN BusinessCategory bc ON bc.business_id = b.business_id
GROUP BY b_id
WHERE category_name LIKE "Burgers" AND b.city ="San Jose" AND b.state="CA"
ORDER BY scores desc

-- query 7 --
SELECT r.yelp_user_id as u_id, SUM(mr.marked_helpful) AS TotalAmount
FROM Review r
INNER JOIN MarkedReview mr ON r.review_id = mr.review_id
GROUP BY u_id
ORDER BY TotalAmount DESC
LIMIT 1

-- query 8 --
SELECT AVG(r.rating) AS avg_rating, b.review_count AS review_count, b.business_id AS bid, b.name AS name
FROM Business b
INNER JOIN Review r ON r.business_id = b.business_id
GROUP BY BusinessID
WHERE review_count > 10 AND avg_rating = 5
ORDER BY review_count desc


-- query 9 --
SELECT b.business_id as b_id, b.business_name as name, b.review_count as review_count
FROM Business b
INNER JOIN Review r ON r.business_id = b.business_id
GROUP BY BusinessID
WHERE r.rating=5 AND COUNT(b.review_count) > 50 -- NOTE** DOES THIS FILTER IT OUT AND THEN COUNT?
ORDER BY review_count desc

-- query 10 --
