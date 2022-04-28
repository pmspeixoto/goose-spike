-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
   MODIFY bank_reference_code VARCHAR(6);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
   MODIFY bank_reference_code VARCHAR(5);

-- +goose StatementEnd
