--EDITAR USUARIO
CREATE PROCEDURE editUser
    @usuario_id INT,
    @username VARCHAR(50),
    @password VARCHAR(32)
AS
BEGIN
    UPDATE useruc SET 
        user_name= @username,
        password= @password
    WHERE useruc_id= @usuario_id
END
--Como obtener cuantos registros actualice???
--como actualizar la fecha update?