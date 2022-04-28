-- +goose Up
-- +goose StatementBegin
ALTER TABLE withdrawals
     DROP COLUMN wallet_id,
     ADD COLUMN company_id INT NOT NULL,
     ADD COLUMN account_provider VARCHAR(255) NOT NULL,
     ADD COLUMN account_id VARCHAR(255) NOT NULL,
     ADD COLUMN payment_id VARCHAR(255) NOT NULL,
     ADD INDEX (company_id, status);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE withdrawals
     DROP COLUMN company_id,
     DROP COLUMN account_provider,
     DROP COLUMN account_id,
     DROP COLUMN payment_id,
     ADD COLUMN wallet_id INT NOT NULL,
     ADD INDEX (wallet_id);

-- +goose StatementEnd
