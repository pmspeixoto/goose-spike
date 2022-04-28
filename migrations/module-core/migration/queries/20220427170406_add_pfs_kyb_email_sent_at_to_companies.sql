-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
     ADD COLUMN pfs_kyb_email_sent_at BIGINT;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
     DROP COLUMN pfs_kyb_email_sent_at;
-- +goose StatementEnd
