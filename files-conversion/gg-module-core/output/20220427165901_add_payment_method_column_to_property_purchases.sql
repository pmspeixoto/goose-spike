-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
   ADD COLUMN payment_method VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
   DROP COLUMN payment_method;
 

-- +goose StatementEnd
