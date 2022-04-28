-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
   ADD COLUMN is_payment_submitted BOOLEAN NOT NULL default false;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
   DROP COLUMN is_payment_submitted;
 

-- +goose StatementEnd
