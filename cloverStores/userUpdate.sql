--Name: userUpdate_sp
-- =============================================  
-- Author:      Martin Cruz Medinilla
-- Create date: july 16 2021  
-- Description: Update an user
-- =============================================  
CREATE PROCEDURE userUpdate_sp
    @usuario_id INT,
    @username VARCHAR(50),
    @password VARCHAR(32)
    @Responsable INT
AS
BEGIN
    UPDATE useruc SET 
        user_name= @username,
        password= @password,
        update_date= GETDATE(),
        updated_by= @Responsable
    WHERE useruc_id= @usuario_id
    SELECT @@ROWCOUNT AS registrosAfectados
END