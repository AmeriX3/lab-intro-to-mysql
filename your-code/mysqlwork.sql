DROP DATABASE IF EXISTS test;
CREATE DATABASE test;
USE	test;
CREATE TABLE cars(
car_id INT PRIMARY KEY,
vin VARCHAR(40),
manufacturer VARCHAR(40),
model VARCHAR(40),
Year_ INT(4),
color VARCHAR(40)
);
CREATE TABLE customers(
cus_id INT PRIMARY KEY,
name_ VARCHAR(40),
phone_no VARCHAR(40),
email VARCHAR(40),
address VARCHAR(40),
city VARCHAR(20),
state_province VARCHAR(40),
country VARCHAR(40),
zip_postal_code VARCHAR(40)
);
CREATE TABLE salespersons(
staff_id INT PRIMARY KEY,
name_ VARCHAR(40),
store VARCHAR(40)
);
CREATE TABLE invoices(
in_number INT PRIMARY KEY,
date_ DATE,
car INT,
customer INT,
salesperson INT
);
USE test;
INSERT INTO cars VALUES
(0, '3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
(1, 'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
(2, 'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
(3, 'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
(4, 'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
(5, 'DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');
INSERT INTO customers VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', Null, 'Paseo de la Chopera 14', 'Madrid', 'Madrid','Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', Null, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte','+33 1 79 75 40 00', Null, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');
INSERT INTO salespersons VALUES
(00001, 'Petey Cruiser', 'Madrid'),
(00002, 'Anna Sthesia', 'Barcelona'),
(00003, 'Paul Molive', 'Berlin'),
(00004, 'Gail Forcewind', 'Paris'),
(00005, 'Paige Turner', 'Mimia'),
(00006, 'Bob Frapples', 'Mexico City'),
(00007, 'Walter Melon', 'Amsterdam'),
(00008, 'Shonda Leer', 'São Paulo');
INSERT INTO invoices VALUES # invoice_no, date, car, customer, salesperson
(852399038,'2018-08-22',0,1,3),
(731166526,'2018-12-31',3,0,5),
(271135104,'2019-01-22',2,2,7)