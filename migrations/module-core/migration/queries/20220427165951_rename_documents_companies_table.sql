-- +goose Up
-- +goose StatementBegin
ALTER TABLE documents_companies RENAME files_companies;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE files_companies RENAME documents_companies;

-- +goose StatementEnd
