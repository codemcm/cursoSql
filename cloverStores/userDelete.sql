--Name: UserDelete_sp
-- =============================================  
-- Author:      Martin Cruz Medinilla
-- Create date: july 16 2021  
-- Description: delete an user in the DB
-- =============================================  
CREATE PROCEDURE UserDelete_sp
    @usuario_id INT
AS
BEGIN
    DELETE FROM useruc 
        WHERE useruc_id= @usuario_id
    SELECT @@ROWCOUNT AS registrosAfectados
END