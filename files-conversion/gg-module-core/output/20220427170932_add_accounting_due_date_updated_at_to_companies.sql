-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN accounting_due_date_updated_at BIGINT NOT NULL DEFAULT 0;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN accounting_due_date_updated_at;

-- +goose StatementEnd
