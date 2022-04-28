-- +goose Up
-- +goose StatementBegin
ALTER TABLE documents
     ADD COLUMN title VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE documents
     DROP COLUMN title;

-- +goose StatementEnd
