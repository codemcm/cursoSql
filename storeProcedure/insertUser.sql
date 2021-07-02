--INSERTAR USUARIO
CREATE PROCEDURE insertUseruc 
--ALTER PROCEDURE insertUseruc --EDITAR PROCEDIMIENTO ALMACENADO
    @username VARCHAR(50),
    @password VARCHAR(32)
	 
AS
BEGIN
    DECLARE @usuario_id INT
    INSERT INTO useruc( user_name, password)
        VALUES(@username, @password)
    SET @usuario_id = SCOPE_IDENTITY()
    
    SELECT 
        useruc_id = @usuario_id,
        user_name = @username
    FROM useruc 
    WHERE  useruc_id = @usuario_id
END