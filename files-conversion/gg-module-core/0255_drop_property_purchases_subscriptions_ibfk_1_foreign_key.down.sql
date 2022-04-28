ALTER TABLE property_purchases_subscriptions
    ADD FOREIGN KEY (property_purchase_id) REFERENCES property_purchases(id);