-- +goose Up
-- +goose StatementBegin
ALTER TABLE subscriptions
     ADD CONSTRAINT fk_subscriptions_property_purchases_ppid
         FOREIGN KEY (property_purchase_id) REFERENCES property_purchases(id);
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE subscriptions
     DROP FOREIGN KEY fk_subscriptions_property_purchases_ppid;
-- +goose StatementEnd
