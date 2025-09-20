PARA CARD TYPE:

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Data/credit_card/card_type.csv'
INTO TABLE card_type
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_type, card_type);

select * from card_type;

PARA BANK TYPE:

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Data/credit_card/bank_type.csv'
INTO TABLE bank
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_bank, bank);

select * from bank;

PARA CARD:

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Data/credit_card/card.csv'
INTO TABLE card
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id_card, card_name, cvv_cvv2, issue_date, expiry_date, billing_date, card_pin, credit_limit, id_type, id_bank);

select * from card;