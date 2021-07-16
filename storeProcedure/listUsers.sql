--CONSULTAR USUARIO

-- =============================================  
-- Author:      Martin Cruz Medinilla
-- Create date: 19-Mayo-2017  
-- Description: Return user records  
-- =============================================  
CREATE PROCEDURE usuarioSeleccionar  
    -- Add the parameters for the stored procedure here  
    @CityName nvarchar(30)  
      
AS  
BEGIN  
    -- SET NOCOUNT ON added to prevent extra result sets from  
    -- interfering with SELECT statements.  
    SET NOCOUNT ON;  
  
    Select * From tblMembers   
    where MemberCity like '%'+@CityName+'%'  
          
END  
GO  

-- SE NECESITAN CONSULTAS CON LIKE....

/*
CALL STORE PROCEDURE
*/

EXEC sp_procoption @ProcName = '<procedure name>'   
    , @OptionName = 'startup'   
    , @OptionValue = 'on';  