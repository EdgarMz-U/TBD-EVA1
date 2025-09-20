create database credit_card;

use credit_card;

TABALA CARD TYPE:

create table card_type (
    id_type int not null primary key,
    card_type varchar(50) not null
);

TABLA BANK:

create table bank (
    id_bank int not null primary key,
    bank varchar(50) not null
);

TABLA CARD:

create table card (
    id_card varchar(20) not null primary key,
    card_name varchar(50) not null,
    cvv_cvv2 varchar(10),
    issue_date date,
    expiry_date date,
    billing_date int,
    card_pin varchar(10),
    credit_limit decimal(15,2),
    id_type int,
    id_bank int,
    foreign key (id_type) references card_type(id_type),
    foreign key (id_bank) references bank(id_bank)
);