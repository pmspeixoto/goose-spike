ALTER TABLE property_purchases
    ADD COLUMN consultant_id INT,
    ADD CONSTRAINT fk_property_purchases_consultants_consultant_id
        FOREIGN KEY (consultant_id) REFERENCES consultants(id);