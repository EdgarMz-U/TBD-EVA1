select * from customer;
select * from cust_location;
select * from location;
select * from product;
select * from orders;
select * from order_detail;

PARA CUSTOMER

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Data/order_tbd/customer.csv'
INTO TABLE customer
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_customer, name, last_name, segment);

PARA LOCATION

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Data/order_tbd/location.csv'
INTO TABLE location
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_location, country, city, state, zip, region);

PARA CUST_LOCATION

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Data/order_tbd/cust_location.csv'
INTO TABLE cust_location
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_cust_loc, id_customer, id_location);

PARA ORDERS

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Data/order_tbd/orders.csv'
INTO TABLE orders
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_order, order_date, ship_date, ship_mode, id_cust_loc);

PARA PRODUCT

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Data/order_tbd/order_detail.csv'
INTO TABLE order_detail
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_order, id_product, sales, quantity, discount, profit);

PARA ORDER_DETAIL

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Data/order_tbd/product.csv'
INTO TABLE product
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_product, category, sub_category, name_product);
