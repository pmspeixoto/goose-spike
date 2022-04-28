-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
   ADD COLUMN shared_secret VARCHAR(16);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
   DROP COLUMN shared_secret;

-- +goose StatementEnd
