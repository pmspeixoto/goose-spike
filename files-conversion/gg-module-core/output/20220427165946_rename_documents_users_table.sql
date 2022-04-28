-- +goose Up
-- +goose StatementBegin
ALTER TABLE documents_users RENAME files_users;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE files_users RENAME documents_users;

-- +goose StatementEnd
