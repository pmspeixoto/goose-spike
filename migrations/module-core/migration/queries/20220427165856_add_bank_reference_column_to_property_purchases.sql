-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
   ADD COLUMN bank_reference_code VARCHAR(5);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
   DROP COLUMN bank_reference_code;
 

-- +goose StatementEnd
