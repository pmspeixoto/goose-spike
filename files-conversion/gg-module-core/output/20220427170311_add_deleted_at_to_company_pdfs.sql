-- +goose Up
-- +goose StatementBegin
ALTER TABLE company_pdfs
     ADD COLUMN deleted_at BIGINT;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE company_pdfs
     DROP COLUMN deleted_at;
-- +goose StatementEnd
