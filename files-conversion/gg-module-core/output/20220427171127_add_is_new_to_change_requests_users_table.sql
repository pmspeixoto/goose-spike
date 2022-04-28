-- +goose Up
-- +goose StatementBegin
ALTER TABLE change_requests_users
     ADD COLUMN is_new BOOLEAN NOT NULL DEFAULT FALSE;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE change_requests_users
     DROP COLUMN is_new;

-- +goose StatementEnd
