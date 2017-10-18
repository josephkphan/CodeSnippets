CREATE TABLE YelpUser (
    YelpID int,
    BirthDate varchar(255),
    BirthPlace varchar(255),
    EmailID int,
    ProfilePic int,
    Gender varchar(255),
    FirstName varchar(255),
    LastName varchar(255),
    ReviewID int,

    PRIMARY KEY(YelpUserID)
    FOREIGN KEY(ReviewID) REFERENCES Review

);

CREATE TABLE ListOfFriends(
    YelpFriendID int,
    YelpUserID int,
    Compliment varchar(255), -- Can be NULL
    ViewRecommendedReviews int, -- Acts as a boolean
    VotedReviewAsPositive varchar(255), -- Acts as a boolean -- positive = funny/cool/helpful
    MarkedHelpful int, -- Acts as a boolean
);


CREATE TABLE Review (
    ReviewID int,
    BusinessID int,
    YelpUserID int,
    Rating int,
    PublicDate varchar(255),
    Recommeneded varchar(255),
    ContentType varchar(255),   -- decides whether content is a text or photo
    ContentText varchar(255),
    ContentPhoto varchar(255),


    PRIMARY KEY (ReviewID),
    FOREIGN KEY (BusinessID) REFERENCES Business,
    FOREIGN KEY (YelpUserID) REFERENCES YelpUser
);

CREATE TABLE Business (
    Name varchar(255),
    BusinessID int,
    PhotoNumber varchar(255),
    Address varchar(255),
    reviewCount int,
    BusinessCategoryID int,
    ReviewID int,
    PhotoID int, -- how does this represent one to many??

    PRIMARY KEY (BusinessID),
    FOREIGN KEY (CategoryID) REFERENCES Category,
    FOREIGN KEY (ReviewID) REFERENCES Review,
    FOREIGN KEY (PhotoID) REFERENCES Photo,
);

CREATE TABLE BusinessCategory(
    BusinessCategoryID int,
    Name varchar(255),
    BusinessID int,
    BusinessCategoryType varchar(255),

    PRIMARY KEY (BusinessCategoryID)
    FOREIGN KEY (BusinessID) REFERENCES Business
);

CREATE TABLE BusinessPhoto(
    PhotoID int,
    PhotoDescription varchar (255),
    Location varchar (255),
    BusinessID int,

    PRIMARY KEY (PhotoID),
    FOREIGN KEY (BusinessID) REFERENCES Business
);
