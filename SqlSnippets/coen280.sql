CREATE TABLE YelpUser (
    BirthDate varchar(255),
    BirthPlace varchar(255),
    EmailID int,
    ProfilePic int,
    YelpID int,
    Gender varchar(255),
    FirstName varchar(255),
    LastName varchar(255),

    PRIMARY KEY(YelpUserID)
);

CREATE TABLE ListOfFriends(
    YelpFriendID int,
    YelpUserID int,
    Compliment varchar(255), -- Can be NULL
    ViewRecommendedReviews int, -- Acts as a boolean
    VotedReviewAsPositive varchar(255), -- Acts as a boolean -- positive = funny/cool/helpful
    MarkedHelpful int, -- Acts as a boolean

);
--

CREATE TABLE Review (
	ReviewID int,
	Rating int,
	PublicDate varchar(255),
    Recommeneded varchar(255),
    ContentType varchar(255),
    ContentText varchar(255),
    ContentPhoto varchar(255)
);

CREATE TABLE Business (
  Name varchar(255),
  BusinessID int,
  PhotoNumber varchar(255),
  Address varchar(255),
  reviewCount int,
  BusinessCategoryID int,
  RecommendedReviewID int,  -- how does this represent one to many??
  HelpfulPhotoID int, -- how does this represent one to many??

  PRIMARY KEY (BusinessID),
  FOREIGN KEY (BusinessCategoryID) REFERENCES BusinessCategory,
  FOREIGN KEY (RecommendedReviewID) REFERENCES RecommendedReview,
);

CREATE TABLE RecommendedReview(
   ReviewID int,
   BusinessID int,

   PRIMARY KEY (ReviewID),
   FOREIGN KEY (YelpUserID) REFERENCES YelpUser,
   FOREIGN KEY (BusinessID) REFERENCES Business,
);

CREATE TABLE BusinessCategory(
    Name varchar(255),
    BusinessCategoryID ID,
    BusinessCategoryType varchar(255)
);

CREATE TABLE HelpfulPhoto(
    PhotoID int,
    BusinessID int,

    FOREIGN KEY (BusinessID) REFERENCES Business,
    FOREIGN KEY (PhotoID) REFERENCES Photo,
);

CREATE TABLE Photo(
    PhotoID int,
    PhotoDescription varchar (255),
    Location varchar (255),
    BusinessID int,
    YelpUserID int,

    PRIMARY KEY (PhotoID),
    FOREIGN KEY (BusinessID) REFERENCES Business,
    FOREIGN KEY (YelpUserID) REFERENCES YelpUser
);
