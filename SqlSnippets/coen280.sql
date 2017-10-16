CREATE TABLE YelpUser (
    BirthDate varchar(255),
    BirthPlace varchar(255),
    EmailID varchar(255),
    ProfilePic int,
    YelpID int,
    Gender varchar(255),
    FirstName varchar(255),
    LastName varchar(255),
);

CREATE TABLE Reviews (
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
  PhotoNumber int,
  Address varchar(255),
  reviewCount int

);

CREATE TABLE BusinessCategory(
  Name varchar(255),
  BusinessCategoryID ID,
  BusinessCategoryType varchar(255)

)

CREATE TABLE Photo(
  PhotoID int,
  PhotoDescription varchar(255),
)


// Notes:
Bussiness needs to have a list o fphotos
Yelp Users need to have a list of friends and reviews made
Reviews have to have list of users that voted them
Content Type determin if its a text or Photo
BusinessCategoryType determins if its a Restaurant / Music / Departmental Stores
Yelp users need to be able to comment/mark photo/reviews/businesses?
