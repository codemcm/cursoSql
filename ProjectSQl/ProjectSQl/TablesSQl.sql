
--DATABASE NAME: tallerSql
/*
    IDENTITY(1,1) PRIMARY KEY
    Primer 1, valor inicial de las filas; el primer registro tendrá el valor de 1.
    Segundo 1, valor incremental; incremento de 1 en 1, por lo tanto, el segundo registro será 2.

*/
go
CREATE TABLE Persona (
    PersonaId INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Apellidos VARCHAR(255),
    correo VARCHAR(50)); 
    go
CREATE TABLE Direcciones(
    DireccionesId INT IDENTITY(1,1) PRIMARY KEY,
    Calle VARCHAR(100),
    Numero INT,
    PersonaId INT,
    FOREIGN KEY (PersonaId) REFERENCES Persona(PersonaId));