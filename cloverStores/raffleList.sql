--Name: raffleList_sp
-- =============================================  
-- Author:      Martin Cruz Medinilla
-- Create date: july 16 2021  
-- Description: Return  active Raffle records  
-- =============================================  
CREATE PROCEDURE raffleList_sp
AS  
BEGIN  
    -- SET NOCOUNT ON added to prevent extra result sets from  
    -- interfering with SELECT statements.  
    SET NOCOUNT ON;  
    Select * From raffle where active=1;
          
END  
GO  