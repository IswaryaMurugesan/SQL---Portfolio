-- DML Coding challenges
Create database Online_Bookstore;
Use Online_Bookstore;

-- Books table
Create table Books (
	BookID Int Primary key ,
    Title Varchar(100) Not null ,
    Author Varchar(50) Not null ,
    ISBN Varchar(20) Unique ,
    Price decimal (8,2) Check (price>0)
    );

-- Orders table 
Create table Orders (
	OrderID int primary key , 
    BookID Int ,
    Orderdate date Not null ,
    Quantity Int Check ( Quantity>0) ,
    
    Foreign key (BookID)
        references Books(BookID)
        On Delete cascade
        On Update cascade
	);

-- Alter 
ALTER TABLE Books
Modify ISBN Varchar(20) Default'Not available';

-- Insert 
Insert into Books (BookID, title, Author, ISBN, Price)Values
(1, 'The Alchemist', 'Paulo Coelho', '9780061122415', 499.00),
(2, 'Wings of Fire', 'A.P.J Abdul Kalam', '9788173711466', 350.50),
(3, 'Harry Potter', 'J.K Rowling', '9780747532743', 799.99),
(4, 'Rich Dad Poor Dad', 'Robert Kiyosaki', '9781612680194', 450.75),
(5, 'Atomic Habits', 'James Clear', '9780735211292', 699.00);


Insert into Orders (OrderID,BookID,Orderdate,Quantity) values
(101, 1, '2026-05-20', 2),
(102, 2, '2026-05-21', 1),
(103, 3, '2026-05-22', 4),
(104, 4, '2026-05-23', 2),
(105, 5, '2026-05-24', 3);

-- Select

select * from Books;
Select * from Orders;


-- Update
Update Books
Set Price = 600.00
where BookId = 1

Update Orders
Set Quantity = 2
Where OrderID = 102

-- Delete 

Delete from Orders where BookId = 3;

-- Truncate 
truncate orders;



