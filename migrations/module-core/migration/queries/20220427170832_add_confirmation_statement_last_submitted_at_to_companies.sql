-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN confirmation_statement_last_submitted_at BIGINT;
 

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN confirmation_statement_last_submitted_at;
 

-- +goose StatementEnd
