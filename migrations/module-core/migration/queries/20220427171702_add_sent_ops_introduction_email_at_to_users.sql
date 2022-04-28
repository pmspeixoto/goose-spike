-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
     ADD COLUMN sent_ops_introduction_email_at BIGINT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
     DROP COLUMN sent_ops_introduction_email_at;
-- +goose StatementEnd
