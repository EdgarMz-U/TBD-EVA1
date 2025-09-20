create database human_res;

use human_res;

create table employee (
    id_employee int not null primary key,
    name_prefix varchar(10),
    first_name varchar(50) not null,
    middle_initial char(1),
    last_name varchar(50) not null,
    gender char(1),
    date_of_birth date,
    weight_kg int,
    ssn varchar(15)
);

create table city (
    id_city int not null auto_increment primary key,
    city varchar(50) not null,
    county varchar(50) not null,
    state char(2) not null,
    zip varchar(10) not null,
    region varchar(20) not null,
    id_employee int,
    foreign key (id_employee) references employee(id_employee)
);

create table contact (
    contact_id int not null auto_increment primary key,
    email varchar(100) not null,
    phone varchar(20),
    id_employee int,
    foreign key (id_employee) references employee(id_employee)
);

create table parent (
    id_parent int not null auto_increment primary key,
    name_father varchar(50) not null,
    last_name_father varchar(50) not null,
    name_mother varchar(50) not null,
    last_name_mother varchar(50) not null,
    id_employee int,
    foreign key (id_employee) references employee(id_employee)
);

create table job (
    id_job int not null auto_increment primary key,
    date_join date not null,
    salary decimal(10,2) not null,
    last_por_hike int,
    id_employee int,
    foreign key (id_employee) references employee(id_employee)
);

create table security (
    id_security int not null auto_increment primary key,
    username varchar(50) not null,
    password varchar(100) not null,
    id_employee int,
    foreign key (id_employee) references employee(id_employee)
);