create database HW27_1;
create table hw27_1.car_brands (
id int auto_increment primary key,
title varchar(155) not null )
;

use hw27_1;
create table car_models (
id int auto_increment primary key,
carBrandId int not null,
title varchar(155) not null,
foreign key (carBrandId) references car_brands(id)
);

use hw27_1;
create table users (
id int auto_increment primary key,
firstName varchar(255) not null,
lastName varchar(255) not null,
email varchar(255) not null,
password varchar(255) not null,
foreign key (firstName) references users(id)
);

use hw27_1;
create table cars (
id int auto_increment primary key,
userId int not null,
carBrandId int not null,
carModelId int not null,
mileage int not null,
initialMilleage int not null,
foreign key (carBrandId) references car_brands(id)
);


insert into car_brands (title)
values 
("Mercedes"),
("BMW"), 
("Toyota"), 
("Audi"), 
("Ford"), 
("Nisan");

select * from car_brands;

insert into car_models (carBrandId, title)
values
(1, 1),
(2, 2), 
(3, 3),
(4, 4),
(5, 5),
(6, 6);

insert into users (firstName, lastName, email, password)
values
("Alena", "Volhovska", "av2387@gmail.com", "wxy1256");

insert into cars (userId, carBrandId, carModelId, mileage, initialMilleage)
values
(4525, 1, 1745, 1000, 500),
(8954, 2, 1425, 2000, 400), 
(1545, 3, 4758, 3000, 700),
(8245, 4, 4552, 1000, 800),
(7855, 5, 1457, 2600, 370),
(4757, 6, 5524, 4000, 456);