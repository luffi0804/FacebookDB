CREATE DATABASE FacebookDB
GO

USE FacebookDB
GO
CREATE TABLE Notifications(
IdNotification int NOT NULL IDENTITY(1,1),
TypeNotification nvarchar(45),
PRIMARY KEY (IdNotification)
)

GO
CREATE TABLE Friends(
IdFriend int NOT NULL IDENTITY(1,1),
NameFriend nvarchar(max),
PRIMARY KEY (IdFriend)
)


GO
CREATE TABLE StatusRequests(
IdStatusRequest int NOT NULL IDENTITY (1,1),
StatusRequest nvarchar(45),
PRIMARY KEY (IdStatusRequest)
)

GO
CREATE TABLE Accounts (
IdAccount int NOT NULL IDENTITY (1,1),
Email nvarchar (45) NOT NULL UNIQUE,
PasswordAccount nvarchar (45) NOT NULL ,
PRIMARY KEY (IdAccount)
)

GO
CREATE TABLE Reations(
IdReation int NOT NULL IDENTITY(1,1),
Reation nvarchar(30),
PRIMARY KEY (IdReation)
)

GO
CREATE TABLE FormatPublications(
IdFormatPublication int NOT NULL IDENTITY (1,1),
TypeFormat nvarchar(45),
PRIMARY KEY (IdFormatPublication)
)

GO
CREATE TABLE Publications(
IdPublication int NOT NULL IDENTITY(1,1),
Descriptions nvarchar(max),
FormatPublication int NOT NULL,
Reation int,
PRIMARY KEY (IdPublication),
CONSTRAINT FK_PublicationsFormat FOREIGN KEY (FormatPublication) REFERENCES FormatPublications(IdFormatPublication),
CONSTRAINT FK_PublicationsReations FOREIGN KEY (Reation) REFERENCES Reations(IdReation),
)

GO
CREATE TABLE UserData(
IdUserData int NOT NULL IDENTITY (1,1),
Name nvarchar (30),
LastName nvarchar (30) NOT NULL,
Phone nvarchar (30),
Account int,
PRIMARY KEY (IdUserData),
CONSTRAINT FK_UserDataAccounts FOREIGN KEY (Account) REFERENCES Accounts(IdAccount),

)

GO
CREATE TABLE FriendRequests(
IdFriendRequest int NOT NULL IDENTITY (1,1),
NameUser nvarchar(45),
StatusRequest int,
PRIMARY KEY (IdFriendRequest),
CONSTRAINT FK_FriendsRequestsStatus FOREIGN KEY (StatusRequest) REFERENCES StatusRequests(IdStatusRequest),
)

GO
CREATE TABLE UsersF (
IdUserf int NOT NULL IDENTITY (1,1),
NameUser nvarchar(30) NOT NULL,
LiveIn nvarchar(30),
UserInstagram nvarchar (30),
Publication int,
FriendRequest int,
Friend int,
UserData int,
Notifications int,
PRIMARY KEY (IdUserf),
CONSTRAINT FK_UsersFPublications FOREIGN KEY (Publication) REFERENCES Publications(IdPublication),
CONSTRAINT FK_UsersFFriendRequest FOREIGN KEY (FriendRequest) REFERENCES FriendRequests(IdFriendRequest),
CONSTRAINT FK_UsersFFriends FOREIGN KEY (Friend) REFERENCES Friends(IdFriend),
CONSTRAINT FK_UsersFUserData FOREIGN KEY (UserData) REFERENCES UserData(IdUserData),
CONSTRAINT FK_UsersFNotification FOREIGN KEY (Notifications) REFERENCES Notifications(IdNotification),
)