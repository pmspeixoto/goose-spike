-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
   ADD COLUMN solicitor_details JSON;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
   DROP COLUMN solicitor_details;

-- +goose StatementEnd
