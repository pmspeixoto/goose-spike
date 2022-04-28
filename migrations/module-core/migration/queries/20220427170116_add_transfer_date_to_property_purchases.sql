-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
   ADD COLUMN transfer_date date;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
   DROP COLUMN transfer_date;

-- +goose StatementEnd
