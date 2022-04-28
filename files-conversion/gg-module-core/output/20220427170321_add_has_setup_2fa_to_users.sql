-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
     ADD COLUMN has_set_up_2fa BOOLEAN NOT NULL DEFAULT FALSE;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
     DROP COLUMN has_set_up_2fa;

-- +goose StatementEnd
