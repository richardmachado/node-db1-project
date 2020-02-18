- find all customers with postal code 1010. Returns 3 records.

SELECT * from customers
WHERE PostalCode = 1010;


- find the phone number for the supplier with the id 11. Should be (010) 9984510.


SELECT * from Suppliers
WHERE supplierID = 11;

- list first 10 orders placed, sorted descending by the order date. The order with date 1997-02-12 should be at the top.

SELECT * from orders
ORDER BY OrderDate
Limit 10;


- find all customers that live in London, Madrid, or Brazil. Returns 18 records.

SELECT * from customers
WHERE City = 'London' or 'Madrid' or Country = 'Brazil';

// add a customer record for _"The Shire"_, the contact name is _"Bilbo Baggins"_ the address is _"1 Hobbit-Hole"_ in _"Bag End"_, postal code _"111"_ and the country is _"Middle Earth"_.

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country ) 
VALUES ('The Shire', 'Bilbo Baggins', '1 Hobbit-Hole', 'Bag End', '111','Middle Earth');

- update _Bilbo Baggins_ record so that the postal code changes to _"11122"_.

Update customers
SET PostalCode = "11122"
where customerID = 92;

-- (Stretch) Find a query to discover how many different cities are stored in the Customers table. Repeats should not be double counted

SELECT DISTINCT CITY from CUSTOMERS;

// result is 69 


-- (Stretch) Find all suppliers who have names longer than 20 characters. You can use `length(SupplierName)` to get the length of the name

SELECT * FROM SUPPLIERS 
WHERE LENGTH(SUPPLIERNAME) >= 20; 

// RESULT IS 12