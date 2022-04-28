-- +goose Up
-- +goose StatementBegin
UPDATE subscriptions s, property_purchases_subscriptions pps
 SET s.property_purchase_id = pps.property_purchase_id
 WHERE s.id = pps.subscription_id;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
INSERT INTO property_purchases_subscriptions (property_purchase_id, subscription_id)
 SELECT id, property_purchase_id FROM subscriptions
 WHERE subscriptions.property_purchase_id IS NOT NULL AND subscriptions.property_purchase_id != 0;
-- +goose StatementEnd
