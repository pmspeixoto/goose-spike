-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_submissions
     ADD COLUMN customer_notes TEXT NULL;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_submissions
     DROP COLUMN customer_notes;

-- +goose StatementEnd
