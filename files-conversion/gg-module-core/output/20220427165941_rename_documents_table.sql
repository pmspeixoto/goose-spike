-- +goose Up
-- +goose StatementBegin
ALTER TABLE documents RENAME files;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE files RENAME documents;

-- +goose StatementEnd
