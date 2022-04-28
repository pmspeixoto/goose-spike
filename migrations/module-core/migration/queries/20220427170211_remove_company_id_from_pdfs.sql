-- +goose Up
-- +goose StatementBegin
ALTER TABLE pdfs DROP FOREIGN KEY `pdfs_ibfk_1`, DROP COLUMN company_id;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE pdfs ADD COLUMN company_id INT, ADD FOREIGN KEY (company_id) REFERENCES companies(id)
    ON
        DELETE
        CASCADE;
-- +goose StatementEnd
