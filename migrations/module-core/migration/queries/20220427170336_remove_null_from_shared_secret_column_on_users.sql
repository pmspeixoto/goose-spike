-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
     MODIFY COLUMN shared_secret VARCHAR(16) NOT NULL;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
     MODIFY COLUMN shared_secret VARCHAR(16);

-- +goose StatementEnd
