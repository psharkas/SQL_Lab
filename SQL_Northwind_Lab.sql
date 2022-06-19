USE northwind;
SET SQL_SAFE_UPDATES = 0;
select * from customers;
select * from `employees`;

select DISTINCT Country from customers;
select * from customers where CustomerID like 'BL%';

select * from orders;
select * from orders limit 100;
select distinct CustomerID from orders where ShipPostalCode = 1010 or ShipPostalCode = 3012 or ShipPostalCode = 12209 or ShipPostalCode = 05023; 
select * from orders where ShipRegion is not null;
select * from customers order by Country asc, City;
insert into customers (CustomerID, CompanyName, ContactName, Address, City, Region, PostalCode, Country, Phone, Fax) values ("BLOO","Peter's Patootie", "Peter Sharkas", "42 Joe Mama's Lane", "Detroit", "MI", 48167, "USA", "(678)-999-8212", "(678)-999-8212");
update orders set ShipRegion = 'EuroZone' where ShipCountry = 'France';

select * from `order details`;

delete from `order details` where Quantity = 1;
select avg(Quantity) from `order details`;
select max(Quantity) from `order details`;
select min(Quantity) from `order details`;
select avg(Quantity) from `order details` group by OrderID;
select max(Quantity) from `order details` group by OrderID;
select min(Quantity) from `order details` group by OrderID;

select CustomerID from orders where OrderID = 10290;

select * from orders inner join customers on orders.CustomerID = customers.CustomerID;
select * from orders left join customers on orders.ShipRegion = customers.Region;
select * from orders right join customers on orders.ShipRegion = customers.Region;


select * from orders inner join employees on orders.EmployeeID = employees.EmployeeID where employees.City = 'London';
select * from products;
select orders.OrderID, orders.ShipName, `order details`.ProductID,products.ProductID from orders inner join `order details` on orders.OrderID = `order details`.OrderID inner join products on `order details`.ProductID = products.ProductID where products.Discontinued =1;


select * from employees where employees.ReportsTo is null;
select * from employees where employees.ReportsTo = 2;
-- Can we specify andrew's name somehow, or do we have to hard code his employee number in to figure this one out?

    
    
