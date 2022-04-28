-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN accounting_due_date date DEFAULT NULL;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN accounting_due_date;

-- +goose StatementEnd
