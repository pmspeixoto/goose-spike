-- +goose Up
-- +goose StatementBegin
DROP TABLE IF EXISTS transactions;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
CREATE TABLE transactions
 (
     id INT NOT NULL PRIMARY KEY auto_increment,
     source VARCHAR(255) NOT NULL, # stripe, transferwise, pfs, etc.
     type VARCHAR(255) NOT NULL,   # credit or debit
     amount BIGINT NOT NULL,
     currency VARCHAR(255) NOT NULL,
     payer VARCHAR(255) NOT NULL,  # could be a bank account number, person's name?
     payee VARCHAR(255) NOT NULL,  # ^
     reference VARCHAR(255),
     created_at BIGINT NOT NULL
 );

-- +goose StatementEnd
