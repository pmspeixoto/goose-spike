-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_submissions
 ADD COLUMN not_required_at bigint(20) DEFAULT NULL;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_submissions
 DROP COLUMN not_required_at;

-- +goose StatementEnd
