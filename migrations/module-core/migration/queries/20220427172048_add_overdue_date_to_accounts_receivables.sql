-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     ADD COLUMN overdue_date DATETIME;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     DROP COLUMN overdue_date;
-- +goose StatementEnd
