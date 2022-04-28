-- +goose Up
-- +goose StatementBegin
ALTER TABLE files_companies
   CHANGE document_id file_id INT NOT NULL;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE files_companies
   CHANGE file_id document_id INT NOT NULL;

-- +goose StatementEnd
