-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
     DROP COLUMN additional_services_required;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
     ADD COLUMN additional_services_required BOOLEAN;

-- +goose StatementEnd
