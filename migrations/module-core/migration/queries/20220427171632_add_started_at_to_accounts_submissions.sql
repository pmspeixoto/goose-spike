-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_submissions
 ADD COLUMN started_at bigint(20) DEFAULT NULL;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_submissions
 DROP COLUMN started_at;

-- +goose StatementEnd
