--Name: prizeListOfRaffle_sp
-- =============================================  
-- Author:      Martin Cruz Medinilla
-- Create date: july 16 2021  
-- Description: Return  active prize records of a raffle given  
-- =============================================  
CREATE PROCEDURE prizeListOfRaffle_sp
    @RaffleId INT
AS  
BEGIN  
    -- SET NOCOUNT ON added to prevent extra result sets from  
    -- interfering with SELECT statements.  
    SET NOCOUNT ON;  
    Select * From prize where active=1 and raffle_id= @RaffleId;
          
END  
GO  