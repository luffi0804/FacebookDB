USE FacebookDB
GO
INSERT INTO Notifications(TypeNotification) VALUES
('sent you friends request'),
('like your photos'),
('love your photo '),
('haha your photo'),
('wow your photo'),
('sad your video'),
('angry your post'),
('love your video'),
('haha your post'),
('accept you friend request');

GO
INSERT INTO Friends(NameFriend) VALUES 
('Yeison Bolaño'),
('Leidy Delgado'),
('Nayeliz Rodriguez'),
('Luisa Arboleda'),
('Mauricio Arboleda'),
('Tere Arboleda'),
('David Quinto'),
('Stiven Delgado'),
('Oscar Arboleda'),
('Luis Segura');

GO
INSERT INTO StatusRequests(StatusRequest) VALUES 
('Acepted'),
('Rejected'),
('Pending');

GO
INSERT INTO Accounts(Email,PasswordAccount) VALUES 
('yeison@gmail.com','1234'),
('leidy@gmail.com','1234'),
('nayeliz@gmail.com','1234'),
('luisa@gmail.com','1234'),
('mauricio@gmail.com','1234'),
('tere@gmail.com','1234'),
('david@gmail.com','1234'),
('stiven@gmail.com','1234'),
('oscar@gmail.com','1234'),
('luis@gmail.com','1234');

GO
INSERT INTO Reations(Reation) VALUES 
('like'),
('love'),
('haha'),
('wow'),
('sad'),
('ungry');

GO
INSERT INTO FormatPublications(TypeFormat) VALUES 
('Video'),
('Photo'),
('Post');



GO
INSERT INTO Publications(Descriptions,FormatPublication,Reation) VALUES 
('Beautifull day',1, 2),
('Happy day',2, 3),
('Happy Birthday', 3, 4),
('I Love SIESA',1, 2),
('Beatifull',2, 3),
('Hello',1, 3),
('Today is challenge day',2, 3),
('Lindo dia',3, 1),
('Lindo dia',2, 4),
('Lindo dia',1, 2);

GO
INSERT INTO UserData(Name,LastName,Phone,Account) VALUES 
('Yeison', 'Quinto','31111',1),
('Leidy', 'Solano', '32222',2),
('Nayeliz', 'Delgado','30000',3),
('Luisa', 'Segura', '33333',4),
('Mauricio', 'Segura','34444',5),
('Tere', 'Segura','35555',6),
('David', 'Bolaño','36666',7),
('Stiven', 'Rodriguez','37777',8),
('Oscar', 'Cano','38888',9),
('Luis', 'Cano','39999',10);

GO 
INSERT INTO FriendRequests(NameUser,StatusRequest) VALUES
('Felipe',1),
('Sofia',2),
('Andres',3),
('Manuela',1),
('Sebastian',1),
('Yury',2),
('Daniel',3),
('Edgar',3),
('Oscar',2),
('Jaime',1);

INSERT INTO UsersF(NameUser,LiveIn,UserInstagram,Publication,FriendRequest,Friend,UserData,Notifications) VALUES
('Yeison Quinto','Turbo','yei',2,1,1,1,1),
('Leidy Solano','Medellin','lei',3,2,2,2,2),
('Nayeliz Delgado','Apartado','nay',1,2,3,4,3),
('Luisa Segura','Cali','luu',1,3,4,5,4),
('Mauricio Segura','Envigado','mao',2,4,5,4,5),
('Tere Segura','Bogota','tere',3,5,6,6,7),
('David Bolaño','Bucaramanga','dav',1,6,7,7,8),
('Stiven Rodriguez','Barranquilla','Stiven',2,NULL,1,8,8),
('Oscar Cano',NULL,'Oscar',1,2,9,NULL,9),
('Luis Cano','Cali','Lui',2,2,10,1,10);