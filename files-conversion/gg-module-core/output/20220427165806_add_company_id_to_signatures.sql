-- +goose Up
-- +goose StatementBegin
ALTER TABLE signatures
     ADD COLUMN company_id INT NOT NULL,
     ADD FOREIGN KEY (company_id) REFERENCES companies(id) ON DELETE CASCADE;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE signatures
     DROP FOREIGN KEY signatures_ibfk_4,
     DROP COLUMN company_id;
-- +goose StatementEnd
