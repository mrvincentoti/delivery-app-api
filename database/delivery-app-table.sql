/***
Roles table
***/
Create table Roles(
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(32) 
);

/***
Order Status table
***/
Create table Order_status(
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    status_name VARCHAR(32)
);

/***
User table
***/
Create table Users(
    id int NOT NULL AUTO_INCREMENT,
    email VARCHAR(32) UNIQUE,
    `password` VARCHAR(255),
    first_name VARCHAR(32),
    last_name VARCHAR(32),
    phone_number VARCHAR(32),
    role_id INT, 
    `address` VARCHAR(255),
    PRIMARY KEY(id),
    FOREIGN KEY(role_id) REFERENCES Roles(id)
);

/***
Order table
***/
Create table Orders(
    id int NOT NULL AUTO_INCREMENT,
    `description` TEXT,
    user_id INT,
    order_origin VARCHAR(32),
    order_destination VARCHAR(32),
    oder_amount DECIMAL(10,2),
    order_status_id INT, 
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES Roles(id),
    FOREIGN KEY (order_status_id) REFERENCES Roles(id)
);

/***
Rider table
***/
Create table Riders(
    id int NOT NULL AUTO_INCREMENT,
    user_id INT,
    `model` VARCHAR(32),
    `colour` VARCHAR(32),
    plate_number VARCHAR(32),
    `make` VARCHAR(32),
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES Users(id)
);