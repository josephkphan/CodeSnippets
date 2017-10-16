CREATE TABLE Users (
    UserID int,
    Email varchar(255),
    Name varchar(255),
    Type varchar(255),
    MonLab1 varchar(255),
    MonLab2 varchar(255),
    MonLab3 varchar(255),
    TueLab1 varchar(255),
    TueLab2 varchar(255),
    TueLab3 varchar(255),
    WedLab1 varchar(255),
    WedLab2 varchar(255),
    WedLab3 varchar(255),
    ThuLab1 varchar(255),
    ThuLab2 varchar(255),
    ThuLab3 varchar(255),
    FriLab1 varchar(255),
    FriLab2 varchar(255),
    FriLab3 varchar(255)
);

SELECT MonLab1, MonLab2, MonLab3, TueLab1, TueLab2, TueLab3, WedLab1, WedLab2, WedLab3, ThuLab1, ThuLab2, ThuLab3, FriLab1, FriLab2, FriLab3, Name, Email FROM Users;

SELECT Email, Name FROM Users WHERE Type='TA' AND MonLab1='Available';

SELECT * FROM Users

INSERT INTO  Users(UserID, Email, Name, Type, MonLab1, MonLab2, MonLab3, TueLab1, TueLab2, TueLab3, WedLab1, WedLab2, WedLab3, ThuLab1, ThuLab2, ThuLab3, FriLab1, FriLab2, FriLab3)
	VALUES (1,'test@test.com', 'Test User', 'TA', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available' );


  VALUES ('$outside_school', '$outside_course', '$scu_course', '$equivalent', '$notes');


  INSERT INTO  User(UserID, Email, Name, Type)
  	VALUES (1,'test@test.com', 'Test User', 'TA' );


    INSERT INTO  Users(UserID, Email, Name, Type, MonLab1, MonLab2, MonLab3, TueLab1, TueLab2, TueLab3, WedLab1, WedLab2, WedLab3, ThuLab1, ThuLab2, ThuLab3, FriLab1, FriLab2, FriLab3)
    	VALUES (2,'test2@test.com', 'Test User2', 'TA', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available', 'Available' );

      INSERT INTO  Users(UserID, Email, Name, Type, MonLab1, MonLab2, MonLab3, TueLab1, TueLab2, TueLab3, WedLab1, WedLab2, WedLab3, ThuLab1, ThuLab2, ThuLab3, FriLab1, FriLab2, FriLab3)
      	VALUES (3,'test3@test.com', 'Test User3', 'TA', 'Available', 'Not Available', 'Not Available', 'Not Available', 'Not Available', 'Not Available', 'Not Available', 'Not Available', 'Not Available', 'Not Available', 'Not Available', 'Not Available', 'Not Available', 'Not Available', 'Not Available' );
