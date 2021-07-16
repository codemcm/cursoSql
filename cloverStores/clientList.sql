--Name: clientList_sp
-- =============================================  
-- Author:      Martin Cruz Medinilla
-- Create date: july 16 2021  
-- Description: Return  active client records  
-- =============================================  
CREATE PROCEDURE clientList_sp
AS  
BEGIN  
    -- SET NOCOUNT ON added to prevent extra result sets from  
    -- interfering with SELECT statements.  
    SET NOCOUNT ON;  
    Select * From client where active=1;
          
END  
GO  