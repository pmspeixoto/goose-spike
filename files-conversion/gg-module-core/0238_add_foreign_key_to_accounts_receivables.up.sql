ALTER TABLE accounts_receivables
    ADD CONSTRAINT fk_accounts_receivables_property_purchases_ppid
        FOREIGN KEY (property_purchase_id) REFERENCES property_purchases(id);