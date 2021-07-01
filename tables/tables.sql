CREATE TABLE useruc(
    useruc_id INT IDENTITY(1,1) PRIMARY KEY,
    user_name VARCHAR(50),
    password VARCHAR(50),
    last_access DATETIME,
    active BIT,
    created_by INT,
    created_date DATETIME,
    update_date DATETIME,
    updated_by INT
);

CREATE TABLE client(
    client_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50),
    last_name VARCHAR(50),
    cell VARCHAR(10),
    email VARCHAR(50),
    observations VARCHAR(300),
    active BIT,
    created_by INT,
    created_date DATETIME,
    updated_by INT,
    update_date DATETIME
);

CREATE TABLE raffle(
    raffle_id INT IDENTITY(1,1) PRIMARY KEY,
    description VARCHAR(50),
    start_date DATE,
    raffle_date DATE,
    active BIT,
    created_by INT,
    created_date DATETIME,
    updated_by INT,
    update_date DATETIME
);


CREATE TABLE ticket(
    ticket_id INT IDENTITY(1,1) PRIMARY KEY,
    raffle_id INT,
    client_id INT,
    active BIT,
    created_by INT,
    created_date DATETIME,
    updated_by INT,
    update_date DATETIME
);

CREATE TABLE prize(
    prize_id INT,
    raffle_id INT,
    product VARCHAR(100),
    active BIT,
    created_by INT,
    created_date DATETIME,
    updated_by INT,
    update_date DATETIME
);

CREATE TABLE winner(
    winner_id INT IDENTITY(1,1) PRIMARY KEY,
    ticket_id INT,
    prize_id INT,
    active BIT,
    created_by INT,
    created_date DATETIME,
    updated_by INT,
    update_date DATETIME
);

