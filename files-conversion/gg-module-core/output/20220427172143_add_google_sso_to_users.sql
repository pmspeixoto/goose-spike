-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
     ADD COLUMN google_sso BOOL NOT NULL DEFAULT false;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
     DROP COLUMN google_sso;
-- +goose StatementEnd
