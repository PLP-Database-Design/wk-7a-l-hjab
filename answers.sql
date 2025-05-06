create database normal;
use normal;

CREATE TABLE productDetail(
OrderID int primary key auto_increment,
customerName varchar (100) not null,
products varchar (100) not null
);



--  select * from productDetail;
 
--  1NF
CREATE TABLE products(
productID int primary key,
productName varchar (100) not null
);

CREATE TABLE orderDetails(
orderID int primary key,
productID int not null,
customerName varchar (100) not null,
foreign key (productID) references products(productID)
);

-- adding column quantity into orderDetails
alter table orderDetails
add Quantity int;

--  Question 2 2NF

select * from orderDetails;

--  2NF 1st Table customers
CREATE TABLE customers(
customerID int primary key,
customerName varchar (100) not null
);

-- CREATE TABLE products(
-- productID int primary key,
-- productName varchar (100) not null
-- );

-- 2nd Table
CREATE TABLE orders(
orderID int primary key,
customerID int not null,
productID int not null,
Quantity int,
foreign key (customerID) references customers(customerID),
foreign key (productID) references products(productID)
 );

 -- 3rd table  product table already exists so we can just retrieve

 -- CREATE TABLE products(
-- productID int primary key,
-- productName varchar (100) not null
-- );
 select * from products;


