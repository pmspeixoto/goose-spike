-- +goose Up
-- +goose StatementBegin
ALTER TABLE markdowns DROP FOREIGN KEY `markdowns_ibfk_1`, DROP COLUMN company_id;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE markdowns ADD COLUMN company_id INT, ADD FOREIGN KEY (company_id) REFERENCES companies(id)
    ON
        DELETE
        CASCADE;
-- +goose StatementEnd
