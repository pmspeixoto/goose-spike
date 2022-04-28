ALTER TABLE property_purchases_accounts_receivable
    ADD FOREIGN KEY (property_purchase_id) REFERENCES property_purchases(id);