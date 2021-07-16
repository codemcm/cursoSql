--Name: userInsertar_sp
-- =============================================  
-- Author:      Martin Cruz Medinilla
-- Create date: july 16 2021  
-- Description: Insert a new user
-- =============================================  
CREATE PROCEDURE userInsertar_sp 
--ALTER PROCEDURE insertUseruc --EDITAR PROCEDIMIENTO ALMACENADO
    @username VARCHAR(50),
    @password VARCHAR(32),
    @creadorId INT
	 
AS
BEGIN
    DECLARE @usuario_id INT
    INSERT INTO useruc( user_name, password, created_by, updated_by)
        VALUES(@username, @password, @creadorId, @creadorId)
    SET @usuario_id = SCOPE_IDENTITY()
    
    SELECT 
        useruc_id = @usuario_id,
        user_name = @username
    FROM useruc 
    WHERE  useruc_id = @usuario_id
END