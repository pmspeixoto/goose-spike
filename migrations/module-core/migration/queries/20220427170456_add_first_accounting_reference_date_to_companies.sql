-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN first_accounting_reference_date BIGINT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN first_accounting_reference_date;

-- +goose StatementEnd
