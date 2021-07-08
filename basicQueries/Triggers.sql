/*
Los triggers o disparadores son objetos de la base de datos que ejecutan acciones 
cuando se producen ciertos eventos (tanto DML como DDL) (inserciones, modificaciones, borrados, creación de tablas, etc).

*/



--Crea un trigger llamado AddLogUser
CREATE TRIGGER AddLogUser 
--Se ejecutara en la tabla useruc
   ON  useruc
--Se ejecutara despues de un Insert o un Update a la tabla
   AFTER UPDATE
AS 
BEGIN
	-- SET NOCOUNT ON impide que se generen mensajes de texto con cada instrucción 
	SET NOCOUNT ON;
    -- Se crea un Insert: cuando se inserten valores en la tabla Cinemex_Ciudades, el trigger insertara un registro en la tabla Cinemex_Cines
    INSERT INTO Cinemex_Cines 
    (ID, IDCiudad, Cine, Direccion)
    SELECT '500', ID, 'Cinemex ' + Ciudad, 'Prueba'
    FROM INSERTED
--Los valores que se insertaran, seran los que esten almacenados en la tabla virtual Inserted
END
