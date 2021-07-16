--Name: ticketsclient_sp
-- =============================================  
-- Author:      Martin Cruz Medinilla
-- Create date: july 16 2021  
-- Description: Return  active tickets  records  of a client
-- =============================================  
CREATE PROCEDURE ticketsclient_sp
    @clientId INT
AS  
BEGIN  
    -- SET NOCOUNT ON added to prevent extra result sets from  
    -- interfering with SELECT statements.  
    SET NOCOUNT ON;  
    Select ticket_id as 'NumeroBoleto' From ticket where active=1 and client_id= @clientId;      
END  
GO  