-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_submissions
     ADD COLUMN signable_document_ids JSON DEFAULT NULL;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_submissions
     DROP COLUMN signable_document_ids;

-- +goose StatementEnd
