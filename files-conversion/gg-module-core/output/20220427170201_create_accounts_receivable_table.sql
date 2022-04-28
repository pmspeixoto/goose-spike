-- +goose Up
-- +goose StatementBegin
CREATE TABLE accounts_receivable
 (
     id INT NOT NULL PRIMARY KEY auto_increment,
     transaction_id INT,
     amount BIGINT NOT NULL,
     currency VARCHAR(255),
     reference VARCHAR(255),
     due_date BIGINT,
     paid_date BIGINT,
     created_at BIGINT,
     updated_at BIGINT,
     FOREIGN KEY (transaction_id) REFERENCES transactions(id)
 );

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS accounts_receivable;

-- +goose StatementEnd
