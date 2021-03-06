CREATE DATABASE Facebook

CREATE TABLE Users(
	Id BIGINT PRIMARY KEY IDENTITY(1,1),
	Username VARCHAR(30) NOT NULL UNIQUE,
	[Password] VARCHAR(26) NOT NULL,
	ProfilePicture VARBINARY(MAX),
	LastLoginTime DATETIME,
	IsDeleated BIT 
)

INSERT INTO Users(Username,[Password],
ProfilePicture,LastLoginTime,IsDeleated)
VALUES
('Stanislav','12345',NULL,CONVERT(datetime,'22-05-2018',103),0),
('Petya','1235545',NULL,CONVERT(datetime,'13-05-2018',103),0),
('Nikolay','1212345',NULL,CONVERT(datetime,'14-05-2018',103),0),
('Nikola','1287345',NULL,CONVERT(datetime,'19-05-2018',103),0),
('Yoan','16322345',NULL,CONVERT(datetime,'02-05-2018',103),0)

ALTER TABLE Users
ADD CONSTRAINT CHK_ProfilePicture 
CHECK (DATALENGTH(ProfilePicture) <= 900*1024)

ALTER TABLE Users
DROP CONSTRAINT [PK__Users__3214EC07A30B201A] 

ALTER TABLE Users
ADD CONSTRAINT PK_Users PRIMARY KEY (Id,Username)

ALTER TABLE Users
ADD DEFAULT GETDATE() FOR LastLoginTime

ALTER TABLE Users
ADD CONSTRAINT CHK_UsernameLength 
CHECK (LEN(Username) >=3) 