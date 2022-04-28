-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_submissions
     ADD COLUMN has_confirmed_completion_date TINYINT DEFAULT NULL;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_submissions
     DROP COLUMN has_confirmed_completion_date;
-- +goose StatementEnd
