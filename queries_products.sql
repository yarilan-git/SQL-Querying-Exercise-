-- Comments in SQL Start with dash-dash --
-- Query 1 Add a product to the table with the name of "chair", 
--  price of 44.00, and can_be_returned of false.--
INSERT INTO products 
    (name, price, can_be_returned) 
VALUES ('chair', 44.00, false);

-- Query 2 Add a product to the table with the name of "stool", 
--  price of 25.99, and can_be_returned of true.--

INSERT INTO 
    products (name, price, can_be_returned) 
VALUES ('stool', 25.99, true);

-- Query 3 Add a product to the table with the name of "table", price of 124.00, 
--  and can_be_returned of false.--

INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124, false);

-- Query 4 Display all of the rows and columns in the table.--

select * from products;

-- Query 5 Display all of the names of the products.--

select name from products;

-- Query 6 Display all of the names and prices of the products.--

select name, price from products;

-- Query 7 Add a new product - make up whatever you would like!--

INSERT INTO products (name, price, can_be_returned) VALUES ('glass', 5, false);

-- Query 8 Display only the products that `can_be_returned`.--

select name from products where can_be_returned = true;

-- Query 9 Display only the products that have a price less than 44.00.--

select name from products where price < 44;

-- Query 10 Display only the products that have a price in between 22.50 and 99.99.--

 select name from products where price between 22.50 and 99.99;

-- Query 11 here's a sale going on: Everything is $20 off! Update the database accordingly.--

update products set price = price - 20;

-- Query 12 Because of the sale, everything that costs less than $25 has sold out.
  -- Remove all products whose price meets this criteria.--

delete from products where price < 25;

-- Query 13 And now the sale is over. For the remaining products, increase their price by $20.--

update products set price = price + 20;

-- Query 14 There's been a change in company policy, and now all products are returnable--

update products set can_be_returned = true;
