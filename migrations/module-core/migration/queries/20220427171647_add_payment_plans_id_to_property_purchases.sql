-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
 ADD COLUMN payment_plans_id INT(11) NULL,
 ADD CONSTRAINT property_purchases_payment_plans_id FOREIGN KEY (payment_plans_id) REFERENCES payment_plans (id);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
 DROP FOREIGN KEY property_purchases_payment_plans_id,
 DROP COLUMN payment_plans_id;

-- +goose StatementEnd
