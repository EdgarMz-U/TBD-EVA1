create database order_tbd;

use order_tbd;

create table customer (
    id_customer varchar(20) primary key not null,
    name varchar(50) not null,
    last_name varchar(50) not null,
    segment varchar(50)
);

create table location (
    id_location int not null auto_increment key,
    country varchar(50) not null,
	city varchar(50) not null,
    state varchar(50) not null,
    zip varchar(20) not null,
    region varchar(50) not null
);

create table cust_location (
	id_cust_loc int auto_increment key,
	id_customer varchar(20) not null,
	id_location int not null,
    foreign key (id_customer) references customer(id_customer),
    foreign key (id_location) references location(id_location)
);

create table orders (
	id_order varchar(30) primary key,
	order_date date not null,
	ship_date date not null,
	ship_mode varchar(20) not null,
	id_cust_loc int not null,
    foreign key (id_cust_loc) references cust_location(id_cust_loc)
);

create table product (
	id_product varchar(20) not null primary key,
	category varchar(30) not null,
	sub_category varchar(20) not null,
	name_product varchar(150) not null
);

create table order_detail(
	id_order varchar(20) not null,
	id_product varchar(20) not null,
	sales decimal (10,2) not null,
	quantity int,
	discount decimal (5,2),
	profit decimal (10,2),
    primary key (id_order, id_product,quantity),
    foreign key (id_order) references orders(id_order),
    foreign key (id_product) references product(id_product)
);