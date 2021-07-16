/*
* Database name: cloverbd
* Created by: Martin Cruz
* Created date: july 2021
*/
--DROP TABLE useruc
CREATE TABLE useruc(
    useruc_id INT IDENTITY(1,1) PRIMARY KEY,
    user_name VARCHAR(50),
    password VARCHAR(50),
    last_access DATETIME,
    active BIT DEFAULT 1,
    created_by INT,
    created_date DATETIME DEFAULT getdate(),
    update_date DATETIME DEFAULT getdate(),
    updated_by INT
);
--DROP TABLE client
CREATE TABLE client(
    client_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50),
    last_name VARCHAR(50),
    cell VARCHAR(10),
    email VARCHAR(50),
    observations VARCHAR(300),
    active BIT DEFAULT 1,
    created_by INT,
    created_date DATETIME DEFAULT getdate(),
    update_date DATETIME DEFAULT getdate(),
    updated_by INT
);
--DROP TABLE raffle
CREATE TABLE raffle(
    raffle_id INT IDENTITY(1,1) PRIMARY KEY,
    description VARCHAR(50),
    start_date DATE,
    raffle_date DATE,
    active BIT DEFAULT 1,
    created_by INT,
    created_date DATETIME DEFAULT getdate(),
    update_date DATETIME DEFAULT getdate(),
    updated_by INT
);

--DROP TABLE ticket
CREATE TABLE ticket(
    ticket_id INT IDENTITY(1,1) PRIMARY KEY,
    raffle_id INT,
    client_id INT,
    active BIT DEFAULT 1,
    created_by INT,
    created_date DATETIME DEFAULT getdate(),
    update_date DATETIME DEFAULT getdate(),
    updated_by INT
    FOREIGN KEY (client_id) REFERENCES  client(client_id),
    FOREIGN KEY (raffle_id) REFERENCES  raffle(raffle_id),
);
--DROP TABLE prize
CREATE TABLE prize(
    prize_id INT IDENTITY(1,1) PRIMARY KEY,
    raffle_id INT,
    product VARCHAR(100),
    active BIT DEFAULT 1,
    created_by INT,
    created_date DATETIME DEFAULT getdate(),
    update_date DATETIME DEFAULT getdate(),
    updated_by INT
    FOREIGN KEY (raffle_id) REFERENCES  raffle(raffle_id)
);

--DROP TABLE winner
CREATE TABLE winner(
    winner_id INT IDENTITY(1,1) PRIMARY KEY,
    ticket_id INT,
    prize_id INT,
    active BIT DEFAULT 1,
    created_by INT,
    created_date DATETIME DEFAULT getdate(),
    update_date DATETIME DEFAULT getdate(),
    updated_by INT
    FOREIGN KEY (ticket_id) REFERENCES  ticket(ticket_id)
);

