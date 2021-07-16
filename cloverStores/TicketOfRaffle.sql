--Name: ticketofraffle_sp
-- =============================================  
-- Author:      Martin Cruz Medinilla
-- Create date: july 16 2021  
-- Description: Return  active Raffle tickets  records  
-- =============================================  
CREATE PROCEDURE ticketofraffle_sp
    @RaffleId INT
AS  
BEGIN  
    -- SET NOCOUNT ON added to prevent extra result sets from  
    -- interfering with SELECT statements.  
    SET NOCOUNT ON;  
    Select ticket_id as 'NumeroBoleto' From ticket where active=1 and raffle_id= @RaffleId;      
END  
GO  