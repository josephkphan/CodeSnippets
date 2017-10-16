SQL CHEAT SHEET

CREATE TABLE TestTable (
    UserID int,
    Name varchar(255)
);

DROP TABLE TestTable;

SELECT tablespace_name, table_name from user_tables;

INSERT INTO TestTable (UserID, Name)
VALUES (123,'Hello World');
