-- +goose Up
-- +goose StatementBegin
ALTER TABLE companies
   ADD COLUMN property_purchase_id INT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE companies
   DROP COLUMN property_purchase_id;

-- +goose StatementEnd
