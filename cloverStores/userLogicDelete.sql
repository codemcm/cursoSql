--Name: userLogicDelete_sp
-- =============================================  
-- Author:      Martin Cruz Medinilla
-- Create date: july 16 2021  
-- Description: Logic Delete of user
-- =============================================  
CREATE PROCEDURE userLogicDelete_sp
    @usuario_id INT,
    @Responsable INT
AS
BEGIN
    UPDATE useruc SET 
        active=0,
        updated_by=@Responsable
    WHERE useruc_id= @usuario_id
    SELECT @@ROWCOUNT AS registrosAfectados
END