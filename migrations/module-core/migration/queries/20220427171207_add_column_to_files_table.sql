-- +goose Up
-- +goose StatementBegin
ALTER TABLE files
     ADD COLUMN document_date VARCHAR(10) NULL;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE files
     DROP COLUMN document_date;
-- +goose StatementEnd
