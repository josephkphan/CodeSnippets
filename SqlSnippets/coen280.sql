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

    FOREIGN KEY (yelp_id) REFERENCES YelpUser(yelp_id)
);

CREATE TABLE Review (
    review_id int,
    rating int,
    public_date varchar(255),
    reocmmended varchar(255),
    content_type varchar(255) NOT NULL,   -- decides whether content is a text or photo
    content_text varchar(255),
    content_photo varchar(255),

    PRIMARY KEY (review_id),
    FOREIGN KEY (yelp_user_id) REFERENCES YelpUser(yelp_user_id),
    FOREIGN KEY (business_id) REFERENCES Business(business_id)
);


CREATE TABLE Business (
    business_id int,
    business_name varchar(255),
    phone_number varchar(255),
    city varchar(255),
    state varchar(255),
    review_count int,

    PRIMARY KEY (business_id),
    FOREIGN KEY (business_category_id) REFERENCES BusinessCategory(business_category_id),
);

CREATE TABLE BusinessCategory(
    business_category_id int,
    name varchar(255),
    business_category_type varchar(255) NOT NULL,

    PRIMARY KEY (business_category_id)
    FOREIGN KEY (business_id) REFERENCES Business(business_id)
);

CREATE TABLE BusinessPhoto(
    business_photo_id int,
    photo_description varchar (255),
    location varchar (255),

    PRIMARY KEY (business_photo_id),
    FOREIGN KEY (business_id) REFERENCES Business(business_id)
);


--------------------------------------------------------------------

-- Query 1 --
SELECT Count(*) FROM Business WHERE state="CA"

-- Query 2 --
SELECT a.business_id AS b_id, a.name AS business_name, b.business_category_id AS bc_id
FROM Business a, BusinessCategory b
WHERE a.name LIKE "Coffee" AND NOT b.business_category_id LIKE "Coffee"
ORDER BY b_id

-- Query 3 --
SELECT b.business_id AS b_id, b.name AS name, b.review_count AS review_count, b.state AS state,
FROM Business b
INNER JOIN BusinessCategory bc ON b.business_id = bc.business_id
GROUP BY state
ORDER BY state ASC

-- query 4 --
SELECT b.business_id AS business_id, b.business_name AS name, b.review_count AS number_of_reviews, AVG(r.rating) as avg_rating
FROM Business b,
INNER JOIN Review r ON b.business_id = r.business_id
GROUP BY name
ORDER BY avg_rating DESC LIMIT 10

-- NOTE-- DOESN'T CONSIDER TIE BREAKS YET

-- query 5 --
SELECT u.yelp_user_id as uid, u.first_name as first_name, u.last_name as last_name, COUNT(DISTINCT(b.state)) as distinct_states_count
FROM Review r
INNER JOIN YelpUser u ON r.yelp_user_id = u.yelp_user_id
INNER JOIN Business b ON r.business_id = b.business_id
GROUP BY uid
WHERE distinct_states_count > 5
ORDER BY distinct_states_count desc



-- query 6 --

-- query 7 --

-- query 8 --

-- query 9 --

-- query 10 --
