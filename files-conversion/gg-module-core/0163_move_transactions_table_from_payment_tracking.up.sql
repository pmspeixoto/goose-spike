CREATE TABLE transactions (
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    created_at bigint NOT NULL,
    source varchar(255) NOT NULL,
    transaction_type varchar(255) NOT NULL,
    amount int NOT NULL,
    currency varchar(255) NOT NULL,
    payer varchar(255) NOT NULL,
    payee varchar(255) NOT NULL,
    reference varchar(255) NOT NULL,
    details json DEFAULT NULL
) DEFAULT CHARSET=utf8;
