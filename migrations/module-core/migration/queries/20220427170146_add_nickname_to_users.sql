-- +goose Up
-- +goose StatementBegin
ALTER TABLE users
 		ADD COLUMN nickname VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE users
 		DROP COLUMN nickname;

-- +goose StatementEnd
