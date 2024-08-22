/***
Insert data into role table
***/
INSERT INTO Roles(role_name) VALUES('admin');
INSERT INTO Roles(role_name) VALUES('user');
INSERT INTO Roles(role_name) VALUES('rider');

/***
Insert data into users table
***/
INSERT INTO Users(email,`password`,first_name, last_name, phone_number, role_id, `address`) 
VALUES('demo@test.com','password','Ishaq','Mohammed','090989868686',1,'Wuse 2 Abuja, NIgeria');