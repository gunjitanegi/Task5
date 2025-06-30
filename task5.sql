CREATE DATABASE orders;
USE orders;

CREATE TABLE Customer(
Customer_ID INTEGER PRIMARY KEY,
Name VARCHAR(50) NOT NULL,
Phone VARCHAR(50) NOT NULL,
Address VARCHAR(50) NOT NULL
);

INSERT INTO Customer (Customer_ID, Name, Phone, Address)
VALUES (1, 'John Doe', '123-456-7890', '123 Main Street'),
(2, 'Jane Smith', '234-567-8901', '456 Maple Avenue'),
(3, 'Adam Johnson', '345-678-9012', '789 Oak Street'),
(4, 'Kate Williams', '456-789-0123', '123 Pine Street'),
(5, 'Harry Brown', '567-890-1234', '456 Cedar Avenue'),
(6, 'Sally Davis', '678-901-2345', '789 Elm Street'),
(7, 'Mike Miller', '789-012-3456', '123 Cedar Avenue'),
(8, 'Elizabeth Taylor', '890-123-4567', '456 Elm Street'),
(9, 'Robert Anderson', '901-234-5678', '789 Oak Avenue'),
(10, 'Margaret Jones', '012-345-6789', '123 Pine Street');

CREATE TABLE Products (
  Product_ID INTEGER PRIMARY KEY,
  Product_Name VARCHAR (50) NOT NULL,
  Price FLOAT NOT NULL,
  Customer_ID INTEGER
);

INSERT INTO Products (Product_ID, Product_Name, Price, Customer_ID)
VALUES (1,'Mango', 3.99, 5),
(2,'Strawberry', 2.99, 8),
(3,'Melon', 2.99, 2),
(4,'Kiwi', 4.99, 5),
(5,'Banana', 2.99, 7),
(6,'Cherry', 5.99, 1),
(7,'Pineapple', 2.99, 5),
(8,'Apple', 3.99, 7),
(9,'Grape', 3.99, 3),
(10,'Orange', 4.99, 6);

1) INNER JOIN
SELECT Name 
FROM Customer
INNER JOIN Products
ON Customer.Customer_ID= Products.Customer_ID;

2)LEFT JOIN
SELECT Name,Address
FROM Customer
LEFT JOIN Products
ON Customer.Customer_ID= Products.Customer_ID;

3)RIGHT JOIN
SELECT Name, Phone
FROM Customer
RIGHT JOIN Products
ON Customer.Customer_ID=Products.Customer_ID
ORDER BY Products.Product_Name;

4) FULL OUTER JOIN
SELECT Address
FROM Customer
FULL OUTER JOIN Products ON 
Customer.Customer_ID=Products.Customer_ID;

