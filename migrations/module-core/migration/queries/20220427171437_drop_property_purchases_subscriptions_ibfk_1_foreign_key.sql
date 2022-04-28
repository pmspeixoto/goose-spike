-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases_subscriptions
     DROP FOREIGN KEY property_purchases_subscriptions_ibfk_1;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases_subscriptions
     ADD FOREIGN KEY (property_purchase_id) REFERENCES property_purchases(id);
-- +goose StatementEnd
