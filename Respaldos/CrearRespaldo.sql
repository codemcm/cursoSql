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


--CREAR SCRIPT PARA RESPALDO CON NOMBRE DIRECTORIO FECHA

declare @strNombreBackup varchar(100);
declare @strNumSem varchar(5); 
set @strNumSem = CAST(DATEPART(WEEK,GETDATE()) as varchar);
set @strNombreBackup = 'D:\RespaldoBD\'+@strNumSem+'\Full-'+'.bak';
backup database [testt]
	TO DISK = @strNombreBackup
	with format,
	name = 'Full '+cast(getdate() as varchar),
	compression;


--CREAR CARPETAS USANDO SQL SERVER

declare @MD varchar(100), @wk_no varchar(100)
set @wk_no = 'D:\Respaldos\' + Convert(VarChar(4),DatePart(Year,GetDate()))+Right('0'+Convert(VarChar(2),DatePart(Month,GetDate())),2)+Right('0'+Convert(VarChar(2),DatePart(Day,GetDate( ))),2)
SET @MD = ' mkdir ' + @wk_no
EXEC xp_cmdshell @MD, no_output