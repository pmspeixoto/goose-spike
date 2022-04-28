-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
   ADD COLUMN is_paid BOOLEAN NOT NULL default false;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
   DROP COLUMN is_paid;

-- +goose StatementEnd
