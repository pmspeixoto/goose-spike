-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_submissions
     ADD COLUMN signatures_requested_at BIGINT DEFAULT NULL;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_submissions
     DROP COLUMN signatures_requested_at;

-- +goose StatementEnd
