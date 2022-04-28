-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
     ADD COLUMN two_factor_auth_method VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
     DROP COLUMN two_factor_auth_method;

-- +goose StatementEnd
