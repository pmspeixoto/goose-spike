-- +goose Up
-- +goose StatementBegin
ALTER TABLE users_share_certificates
 ADD COLUMN created_at DATETIME NOT NULL DEFAULT '1970-01-01';

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users_share_certificates
 DROP COLUMN created_at;

-- +goose StatementEnd
