CREATE TABLE YelpUser (
    user_id VARCHAR(255) PRIMARY KEY,
    email_id VARCHAR(255),
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birthday VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    zip VARCHAR(255),
    gender VARCHAR(255),
    profile_pic VARCHAR(255)
);

CREATE TABLE BusinessCategory (
    business_category_id VARCHAR(255) PRIMARY KEY,
    category_name VARCHAR(255)
);

CREATE TABLE Business (
        business_id VARCHAR(255) PRIMARY KEY,
        name VARCHAR(255),
        street VARCHAR(255),
        city VARCHAR (255),
        state VARCHAR(255),
        zip VARCHAR(255),
        phone_number VARCHAR(255),
        review_count INTEGER,
        business_category_id VARCHAR(255),
        FOREIGN KEY (business_category_id) REFERENCES BusinessCategory(business_category_id)
);

CREATE TABLE Review (
        review_id VARCHAR(255) PRIMARY KEY,
        rating INTEGER,
        user_id VARCHAR(255),
        public_date VARCHAR(255),
        recommended VARCHAR(255) NOT NULL,  -- Yes or No
        business_id VARCHAR(255),
        count_funny INTEGER,
        count_cool INTEGER,
        count_useful INTEGER,
        FOREIGN KEY (business_id) REFERENCES Business(business_id),
        FOREIGN KEY (user_id) REFERENCES YelpUser(user_id)
);


CREATE TABLE YelpFriend(
    yelp_friend_id INTEGER ,
    compliment varchar(255), -- Can be NULL
    marked_helpful INTEGER, -- Acts as a boolean
    voted_positive varchar(255), -- Acts as a boolean -- positive = funny/cool/helpful
    user_id varchar(255),
    FOREIGN KEY (user_id) REFERENCES YelpUser(user_id)
);

CREATE TABLE YelpUserReview(
    review_id varchar(255),
    user_id varchar(255),
    FOREIGN KEY (review_id) REFERENCES Review(review_id),
    FOREIGN KEY (user_id) REFERENCES YelpUser(user_id)
);

CREATE TABLE ReviewContent(
    review_content_id INTEGER Primary Key,
    content_type varchar(255) NOT NULL,   -- decides whether content is a text or photo
    content_text varchar(255),
    content_photo varchar(255),
    review_id varchar(255),
    FOREIGN KEY (review_id) REFERENCES Review(review_id)
);

CREATE TABLE BusinessPhoto(
    business_photo_id INTEGER Primary Key,
    photo_description varchar (255),
    location varchar (255),
    business_id varchar(255),
    FOREIGN KEY (business_id) REFERENCES Business(business_id)
);
