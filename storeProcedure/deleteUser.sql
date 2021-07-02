--ELIMINA USUARIO
--ALTER  PROCEDURE usuarioElimina
CREATE PROCEDURE deleteUser
    @usuario_id INT
AS
BEGIN
    DELETE FROM useruc 
        WHERE useruc_id= @usuario_id
    SELECT @@ROWCOUNT AS registrosAfectados
END
