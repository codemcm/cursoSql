USE testt --database name
GO
BACKUP DATABASE [testt]
TO  DISK = N'D:\RespaldoBD\testt.bak'
WITH CHECKSUM;


--HABILITAR COMANDO PARA EJECUTAR EXE DESDE GESTOR

-- this turns on advanced options and is needed to configure xp_cmdshell
sp_configure 'show advanced options', '1'
RECONFIGURE


-- this enables xp_cmdshell
sp_configure 'xp_cmdshell', '1' 
RECONFIGURE




--llamar exe desde sql

Exec xp_cmdshell "D:\appDate\EscribeArchivoFecha.exe" 