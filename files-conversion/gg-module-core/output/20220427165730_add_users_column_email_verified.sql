-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
   ADD COLUMN email_verified BOOLEAN DEFAULT false;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
   DROP COLUMN email_verified;

-- +goose StatementEnd
