-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_submissions
     ADD COLUMN mortgage_repayment_start_date VARCHAR(255); # 2006-01-02

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_submissions
     DROP COLUMN mortgage_repayment_start_date;

-- +goose StatementEnd
