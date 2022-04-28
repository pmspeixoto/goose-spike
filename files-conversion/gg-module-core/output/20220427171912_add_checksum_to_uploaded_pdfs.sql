-- +goose Up
-- +goose StatementBegin
ALTER TABLE uploaded_pdfs
 ADD COLUMN checksum VARCHAR(255) NOT NULL;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE uploaded_pdfs
 DROP COLUMN checksum;

-- +goose StatementEnd
