-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_submissions
     ADD COLUMN contract_exchange_date VARCHAR(255); # 2006-01-02

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_submissions
     DROP COLUMN contract_exchange_date;

-- +goose StatementEnd
