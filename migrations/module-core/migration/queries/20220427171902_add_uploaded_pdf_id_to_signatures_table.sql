-- +goose Up
-- +goose StatementBegin
ALTER TABLE signatures
     ADD uploaded_pdf_id INT NULL,
     ADD CONSTRAINT fk_signatures_uploaded_pdf FOREIGN KEY (uploaded_pdf_id) REFERENCES uploaded_pdfs(id);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE signatures
     DROP uploaded_pdf_id,
     DROP FOREIGN KEY fk_signatures_uploaded_pdf;
-- +goose StatementEnd
