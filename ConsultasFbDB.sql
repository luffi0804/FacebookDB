USE FacebookDB
GO

SELECT * FROM UserData
-- Modificar un campo de un registro de una sola de las tablas usando update
UPDATE UserData
SET LastName = 'Bolaño'
WHERE Name = 'Yeison'
AND Lastname = 'Quinto'

GO

--- Eliminar un registro de una sola de las tablas usando WHERE
SELECT * FROM UserData
DELETE FROM UserData
WHERE Name = 'Luis ' AND LastName = 'Cano'

GO
/*Seleccionar cualquiera de las tablas y realizar una consulta usando LIKE con comodin %
Traigame los usuarios que tengan en su nombre Lu*/
SELECT NameUser AS Nombre FROM UsersF
WHERE NameUser LIKE 'Lu%'

GO
/*Seleccionar cualquiera de las tablas y realizar una consulta usando  ORDER BY, ASC
Seleccione los nombres de los usuarios y ordenelos de forma ascendente*/
SELECT Name AS Nombre
FROM UserData
ORDER BY Name ASC

GO
/*Seleccionar cualquiera de las tablas y realizar una consulta usando  ORDER BY, ASC 
Seleccion los nombres de las solicitudes de amistad y ordenelos de forma descendente*/
SELECT NameUser  AS Nombre
FROM FriendRequests
ORDER BY NameUser DESC

/*Seleccionar cualquiera de las tablas y realizar una consulta usando BETWEEN, WHERE, AND 
Seleccione el nombre y el telefono donde el telefono este entre 33333 y 35555*/

SELECT Name AS Nombre, Phone AS Telefono
FROM UserData
WHERE Phone
BETWEEN '33333' AND '35555'

GO
/*Seleccionar cualquiera de las tablas y realizar una consulta usando BETWEEN, WHERE, AND, NOT
Seleccione los Id y los nombres donde el Id del usuario no este entre 1 y 5*/
SELECT IdUserData AS Id, Name AS Nombre
FROM UserData
WHERE IdUserData
NOT BETWEEN 1 AND 5

GO
/*Seleccionar cualquiera de las tablas y realizar una consulta usando BETWEEN, WHERE, OR, 
Seleccione los Id y los Email donde el Id sea 1 o 3*/

SELECT IdAccount AS Id, Email AS Correo
FROM Accounts
WHERE IdAccount = 1
OR IdAccount = 3

GO
/*Seleccionar cualquiera de las tablas y realizar una consulta usando ANY 
Seleccione el nombre de los usuarios y el id de la publicacion donde id de la publicacion sea de tipo 3*/

SELECT NameUser AS Usuario, Publication AS Publicacion FROM UsersF 
WHERE Publication = ANY (SELECT 3 FROM Publications)

GO
/*Seleccionar cualquiera de las tablas y realizar una consulta usando ALL
Seleccion todos los nombre de los usuario y el id de las publicaciones donde id de la publicacion sea 1 */
SELECT NameUser AS Nombre, Publication AS Publicacion
FROM UsersF
WHERE Publication = ALL 
(SELECT  IdPublication 
FROM Publications 
WHERE IdPublication = 1);
 
GO

/*Seleccionar cualquiera de las tablas y realizar una consulta usando EXISTS	
Seleccione los nombre de los usuario y el id de las solicitudes donde exista donde id de la publicacion sea el id de SOFIA */
SELECT NameUser AS Nombre, FriendRequest AS Solicitud
FROM UsersF AS u 
WHERE EXISTS (SELECT * FROM FriendRequests AS f WHERE  f.IdFriendRequest = u.FriendRequest  AND f.NameUser= 'Sofia')

GO
/*Seleccionar cualquiera de las tablas y realizar una consulta usando JOIN 
Seleccione el nombre y la descripcion de la notificacion donde el id de la notificacion sea 8 en este caso love your video*/
USE FacebookDB1
SELECT u.NameUser AS Nombre,  n.TypeNotification AS Notificacion
FROM UsersF AS u  JOIN Notifications AS n ON  n.IdNotification = u.Notifications
WHERE n.IdNotification = 8

GO

/*Seleccionar cualquiera de las tablas y realizar una consulta usando LEFT JOIN 
Seleccione el nombre y la solicitud de amistad donde la solicitud de amistad*/
SELECT u.NameUser AS Nombre,  f.NameUser AS Solicitud
FROM UsersF AS u  LEFT JOIN FriendRequests AS f ON  f.IdFriendRequest = u.FriendRequest


GO

/*Seleccionar cualquiera de las tablas y realizar una consulta usando LEFT JOIN 
Seleccione el nombre del usuario y el nombre del amigo */
SELECT u.NameUser AS Nombre, f.NameFriend AS Amigo
FROM UsersF AS u RIGHT JOIN Friends AS f ON f.IdFriend = u.Friend

GO
/*Seleccionar cualquiera de las tablas y realizar una consulta usando LEFT JOIN 
Seleccione el nombre, apellido y email  */
SELECT u.Name AS Nombre, u.LastName AS Apellido, a.Email AS Email
FROM UserData AS u FULL OUTER JOIN Accounts AS a ON a.IdAccount = u.Account