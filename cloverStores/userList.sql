--Name: usuarioConsultar_sp
-- =============================================  
-- Author:      Martin Cruz Medinilla
-- Created date: 19-Mayo-2017  
-- Description: Return user records  
-- =============================================  
CREATE PROCEDURE usuarioConsultar  
AS  
BEGIN
    Select * From useruc where active=1;          
END  
GO  