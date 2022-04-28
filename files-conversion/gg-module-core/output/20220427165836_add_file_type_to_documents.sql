-- +goose Up
-- +goose StatementBegin
ALTER TABLE documents
     ADD COLUMN file_type VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE documents
     DROP COLUMN file_type;

-- +goose StatementEnd
