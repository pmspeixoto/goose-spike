-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
     ADD COLUMN tags VARCHAR(255) NOT NULL DEFAULT '';

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
     DROP COLUMN tags;

-- +goose StatementEnd
