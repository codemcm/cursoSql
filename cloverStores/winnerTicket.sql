--Name: winnerticket_sp
-- =============================================  
-- Author:      Martin Cruz Medinilla
-- Create date: july 16 2021  
-- Description: Return winner Ticket records  from a given raffle
-- =============================================  
CREATE PROCEDURE winnerticket_sp
@RaffleId INT
AS  
BEGIN  
    -- SET NOCOUNT ON added to prevent extra result sets from  
    -- interfering with SELECT statements.  
    SET NOCOUNT ON;  
    Select W.ticket_Id AS 'NBoleto', P.product 
    From winner W  
    INNER JOIN ticket T
    ON W.ticket_Id= T.ticket_Id
    INNER JOIN prize P 
    ON W.prize_id= P.prize_id
    where T.raffle_id= @RaffleId;
          
END  
GO  