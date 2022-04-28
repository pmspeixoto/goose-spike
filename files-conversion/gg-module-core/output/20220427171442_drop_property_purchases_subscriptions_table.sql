-- +goose Up
-- +goose StatementBegin
DROP TABLE property_purchases_subscriptions;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
CREATE TABLE property_purchases_subscriptions (
     property_purchase_id INT NOT NULL,
     subscription_id INT NOT NULL,
     FOREIGN KEY (property_purchase_id) REFERENCES property_purchases(id)
 );

-- +goose StatementEnd
