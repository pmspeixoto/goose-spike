-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchase_companies
   MODIFY COLUMN company_id INT NOT NULL UNIQUE,
   MODIFY COLUMN property_purchase_id INT NOT NULL UNIQUE;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchase_companies
   MODIFY COLUMN company_id INT NOT NULL,
   MODIFY COLUMN property_purchase_id INT NOT NULL;
-- +goose StatementEnd
