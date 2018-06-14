CREATE DATABASE PROVEDORES;
USE PROVEDORES
CREATE TABLE USUARIOS (usuario VARCHAR(25), passwor VARCHAR (25), nombre VARCHAR (25), apellido VARCHAR (25));
CREATE TABLE CLIENTE(Clave INT NOT NULL IDENTITY, Nombre VARCHAR(50), Direccion VARCHAR(60), Telefono VARCHAR(12));
CREATE TABLE PRODUCTO(Clave INT NOT NULL IDENTITY, Nombre VARCHAR(40));

INSERT INTO USUARIOS VALUES
('luislope',123,'fer','lopez')
('ferchoo',343,'xd','martinez')
('luisito',343,'dx','rodriguez')

INSERT INTO PRODUCTO VALUES
('Comedor redondo'),
('Comedor cuadrado'),
('Cama individual'),
('Cama matrimonial'),
('Cama canguro'),
('Recamara individual'),
('Recamara matrimonial'),
('Mesas pantalla'),

INSERT INTO CLIENTE VALUES 
('luis fernando','Justo C. Díaz No. 11,La Fama,La Fama, Santa Catarina, N.L.','8181070208'),
('EL bronco rodriguez','Calle Vicente García Torres,San Martín,66005 México, D.F.','8115321702'),
('Margarita Botello','Arandas S/n,Los Altos,66614 Monterrey, N.L.','8115798551');

------USAURIOS----------
---Alta de usuarios----
CREATE PROCEDURE SP_UsuarioAlta
@usuario VARCHAR(25)
AS 
INSERT INTO USUARIO VALUES
( @usuario);




--------Baja usuario----

 CREATE PROCEDURE SP_UsuarioBaja
 @usuario VARCHAR(25) 
 AS
 DELETE FROM USUARIO  WHERE usuario=@usuario;




 --consulta general de usuario 
 CREATE PROCEDURE SP_UsuarioConsultaGeneral
 AS 
 SELECT usuario FROM USUARIO;
 EXEC SP_UsuarioConsultaGeneral;


  --------------modificar campos de un usuario ---------------
 CREATE PROCEDURE SP_UsaurioCambio
 @usuario VARCHAR (25)
AS UPDATE USUARIO SET Nombre=@Nombre 
WHERE usuario=@usuario;









----PRODUCTOS-----
---------Altas de productos------------
--PROCEDIMIENTO ALMACENADO DE ALTA DE PRODUCTOS
CREATE PROCEDURE SP_ProductoAlta
 @Nombre VARCHAR(30)
 AS
 INSERT INTO PRODUCTO VALUES 
 ( @Nombre);



 ------baja productos con clave-----
 CREATE PROCEDURE SP_ProductoBajaClave
 @Clave INT 
 AS
 DELETE FROM PRODUCTO  WHERE Clave=@Clave;

 EXEC SP_ProductoBajaClave 21;

 -----con nombre de producto-----
 
 CREATE PROCEDURE SP_ProductoBajaNombre
 @Nombre Varchar(38) 
 AS
 DELETE FROM PRODUCTO  WHERE Nombre=@Nombre;


--consulta general de producto 
 CREATE PROCEDURE SP_ProductoConsultaGeneral
 AS 
 SELECT Clave , Nombre FROM PRODUCTO;
 EXEC SP_ProductoConsultaGeneral;


  --------------modificar campos de un porducto ---------------
 CREATE PROCEDURE SP_ProductoCambioTR
	@Clave INT, @Nombre VARCHAR (39)
	AS UPDATE PRODUCTO SET Nombre=@Nombre 
	WHERE Clave=@Clave;
 


 




 

 ----------CLIENTES--------------
 
 
 ----Alta de clientes------
CREATE PROCEDURE SP_ClienteAlta
 @Nombre VARCHAR(50), @Direccion VARCHAR(60), @Telefono VARCHAR(12)
 AS
 INSERT INTO CLIENTE VALUES
 (@Nombre, @Direccion , @Telefono);

 exec SP_ClienteAlta 'luislope','asdsdasdasd','1001';
 select*from CLIENTE



 -------Modificaciones de clientes----------
 CREATE PROCEDURE SP_ClienteAlta
 @Nombre VARCHAR(50), @Direccion VARCHAR(60), @Telefono VARCHAR(12)
 AS
 INSERT INTO CLIENTE VALUES
 (@Nombre, @Direccion , @Telefono);

 exec SP_ClienteAlta 'ferr','utsc','1561';
 select*from CLIENTE

-------baja por clave de cliente-----------
 CREATE PROCEDURE SP_ClienteBajaClave
 @Clave INT 
 AS
 DELETE FROM CLIENTE  WHERE Clave=@Clave;
EXEC SP_ClienteBajaClave 173;

--...consulta general para clientes----------
 CREATE PROCEDURE SP_ClienteConsultaGeneral
 AS SELECT Clave,Nombre,Direccion,Telefono
 FROM CLIENTE;