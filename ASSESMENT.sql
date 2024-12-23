create table Customers (CustomerID serial primary key, Name varchar, Age int ,
Gender varchar, Region varchar, Email varchar);

create table Products (ProductID serial primary key, ProductName varchar, Category varchar, 
Price real, StockQuantity int);

create table Sales (SaleID serial primary key, Date date, CustomerID int references Customers (CustomerID ) , 
ProductID int references Products (ProductID) , Quantity int , TotalAmount real);

create table Returnss (ReturnID serial primary key, SaleID int references sales ( SaleID)  , 
ReturnDate date , Reason varchar);

copy customers  from 'F:/assesment/customers.csv' delimiter ',' csv header;
copy  products from 'F:/assesment/products.csv' delimiter ',' csv header;
copy sales from 'F:/assesment/sales.csv' delimiter ',' csv header;
copy  returnss from 'F:/assesment/returns.csv' delimiter ',' csv header;