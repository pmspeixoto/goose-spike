ALTER TABLE consent
    ADD COLUMN property_purchase_id INT(11),
    DROP PRIMARY KEY,
    ADD PRIMARY KEY(user_id, property_purchase_id, consent_type),
    DROP FOREIGN KEY consent_ibfk_1,
    ADD CONSTRAINT consent_ibfk_3 FOREIGN KEY (property_purchase_id) REFERENCES property_purchases(id),
    DROP COLUMN company_id;