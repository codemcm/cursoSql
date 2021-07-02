--INSERTAR USUARIO
CREATE PROCEDURE useruc 
--ALTER PROCEDURE useruc --EDITAR PROCEDIMIENTO ALMACENADO
    @username VARCHAR(50),
    @password VARCHAR(32)
	 
AS
BEGIN
    DECLARE @usuario_id INT
    INSERT INTO useruc( user_name, password)
        VALUES(@username, @password)
    SET @usuario_id = SCOPE_IDENTITY()
    
    SELECT 
        usuario_id = @usuario_id,
        username = @username
    FROM Usuario 
    WHERE  usuario_id = @usuario_id
END