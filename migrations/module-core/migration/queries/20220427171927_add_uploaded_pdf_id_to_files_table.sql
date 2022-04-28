-- +goose Up
-- +goose StatementBegin
ALTER TABLE files
     ADD uploaded_pdf_id INT;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE files
     DROP uploaded_pdf_id;
-- +goose StatementEnd
