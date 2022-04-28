-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
   ADD COLUMN role VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
   DROP COLUMN role;

-- +goose StatementEnd
