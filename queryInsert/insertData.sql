

INSERT INTO useruc(user_name, password)
VALUES ('codemcm', 'abc'),
       ('martin', '123'), ('userjose', '94949'),('useredx', '123'), 
       ('usersam', '94949'),('userAdmin', '123');
INSERT INTO useruc(user_name, password)
      VALUES('enrique','123'),
            ('liss','321'),
            ('userybd','asd'),
            ('luis','dsa'),
            ('naya','cvb');

INSERT INTO useruc(user_name,password)
VALUES('admin','321'),('host','num2'),('user3','098'),
    ('RMO','wex'),('KML','adm'),('Num3','fla');

INSERT INTO raffle(description, start_date, raffle_date)
    VALUES('rifa enero','2021-03-02','2021-03-30'),
    ('rifa enero','2021-01-02','2021-01-8'),
    ('rifa febrero','2021-02-02','2021-02-9'),
    ('rifa marzo2','2021-03-02','2021-03-10'),
    ('rifa abril','2021-04-02','2021-04-11'),
    ('rifa mayo','2021-05-02','2021-05-12');

INSERT INTO raffle(description, start_date, raffle_date)
    VALUES('rifa enerod','2021-01-01','2021-01-29'),
    ('rifa febrerod','2021-02-01','2021-02-28'),
    ('rifa marzod','2021-03-01','2021-03-29'),
    ('rifa abrild','2021-01-04','2021-04-29'),
    ('rifa mayod','2021-01-05','2021-05-29'),
    ('rifa jumiod','2021-01-06','2021-06-29');


INSERT INTO raffle (description,start_date,raffle_date)
VALUES
('rifa un de un auto','2021-04-01','2021-04-20'),
('rifa un de una casa','2021-05-12','2021-05-22'),
('rifa un de un libro','2021-06-05','2021-06-25'),
('rifa un de un auto','2021-07-12','2021-07-24'),
('rifa un de un vaso','2021-08-10','2021-08-20'),
('rifa un de un laptop','2021-09-06','2021-09-18');


INSERT INTO client(name, last_name, cell, email)
    VALUES('Ana','Belez','1230495042','ana@hotmail.com'),
    ('Amenadiel','Baez','1233395042','amenadiel@hotmail.com'),
    ('Alicia','Contreras','1440495042','ali@hotmail.com'),
    ('Anahi','Cortes','5530495042','anahi@hotmail.com'),
    ('Abelardo','Donato','6630495042','abel@hotmail.com'),
    ('Bruno','Duran','7730495042','bruno@hotmail.com');

INSERT INTO client(name, last_name,cell,email)
    VALUES('José','Pérez','2391098877','jose@gmail.com'),
            ('Mauricio','Roman','2391688877','mauricio@gmail.com'),
            ('Joss','sanchez','2391111877','joss@gmail.com'),
            ('René','Hernandez','2980098877','rene@gmail.com'),
            ('rocio','roman','2281098877','rocio@gmail.com'),
            ('Abigail','Pérez','2391018367','aby@gmail.com');

INSERT INTO client(name,last_name,cell,email)
VALUES 
('Maria','Mercedez','2381238821','Mer_21@gmail.com'),
('Lupe','Olmos','2381903312','LuOl_23@gmail.com'),
('Rosa','Hernadez','2371242093','rositaH@hotmail.com'),
('Eduardo','Ortiz','2380982781','Ortiz09@hotmail.com'),
('Mauricio2','Pines','2370982356','pineda_98@gmail.com'),
('Alberto','Lopez','2387651234','lop_20@gmail.com');

INSERT INTO prize(raffle_id,product)
VALUES
(1,'licuadora'),
(2,'refrigerador'),
(13,'auto'),
(14,'casa'),
(15,'libro'),
(16,'auto 2'),
(17,'vaso'),
(18,'laptop'),
(3,'tostadora'),
(4,'kit de vasos'),
(5,'casita para un perro'),
(6,'mochila'),
(7,'tenis'),
(8,'despensa'),
(9,'departamento'),
(10,'minilaptop'),
(11,'pantalla'),
(12,'motocicleta'),
(13,'bicicleta'),
(14,'casa 2'),
(15,'libro 2');

INSERT INTO ticket(raffle_id, client_id)
    VALUES(1,1),(1,2),(1,2),(1,2),(1,2),
    (1,3),(1,3),(1,3),(1,3),(1,4);
INSERT INTO ticket(raffle_id,client_id)
VALUES
(1,2),
(1,3),
(3,2),
(4,7),
(5,2),
(9,10),
(6,10),
(1,15),
(3,8),
(7,2),
(5,9);

INSERT INTO winner(ticket_id, prize_id)
    VALUES(2,10),(3,12),(7,8),(9,9),
    (10,11);

UPDATE prize SET created_by=1 where created_by is null;
UPDATE client SET created_by=1 where created_by is null;
UPDATE raffle SET created_by=1 where created_by is null;
UPDATE ticket SET created_by=1 where created_by is null;
UPDATE winner SET created_by=1 where created_by is null;



UPDATE prize SET updated_by=1 where updated_by is null;
UPDATE client SET updated_by=1 where updated_by is null;
UPDATE raffle SET updated_by=1 where updated_by is null;
UPDATE ticket SET updated_by=1 where updated_by is null;
UPDATE winner SET updated_by=1 where updated_by is null;



/*
Ejercicios de join

1. Lista de clientes con sus tickets
2. Lista de tickets ganadores
3. Lista de premios de una rifa data
4. La lista de clientes creados por un usuario en especifico (user_id)
5. 
*/