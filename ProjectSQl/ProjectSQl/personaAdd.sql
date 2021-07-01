--CREATE STORE PROCEDURE FOR Insert

/*
 La instrucción SET solo se puede usar en variable a la vez. 
 Esto puede volverse engorroso si necesita asignar valores de atributos múltiples. 
 Pero es importante indicar que usted, sí necesita usar varias declaraciones de conjunto. 
*/
CREATE PROCEDURE personaAdd(
		@userName VARCHAR(50),
		@password VARCHAR(50)

AS
BEGIN 
    DECLARE @PersonaId
);
