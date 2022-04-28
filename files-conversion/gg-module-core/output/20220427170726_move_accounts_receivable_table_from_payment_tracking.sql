-- +goose Up
-- +goose StatementBegin
CREATE TABLE accounts_receivables (
     id int NOT NULL AUTO_INCREMENT PRIMARY KEY ,
     created_at bigint DEFAULT NULL,
     updated_at bigint DEFAULT NULL,
     deleted_at bigint DEFAULT NULL,
     transaction_id int DEFAULT NULL UNIQUE,
     amount bigint NOT NULL,
     currency varchar(255) NOT NULL,
     reference varchar(255) DEFAULT NULL,
     due_date bigint DEFAULT NULL,
     paid_date bigint DEFAULT NULL,
     account_type varchar(255) NOT NULL,
     UNIQUE KEY `UQ_Accounts_Receivable` (`amount`,`currency`,`reference`,`due_date`),
     FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`)
 ) DEFAULT CHARSET=utf8;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE accounts_receivables;

-- +goose StatementEnd
