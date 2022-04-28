ALTER TABLE property_purchases
    ADD COLUMN approver_id INT,
    ADD CONSTRAINT fk_property_purchases_employees_uid FOREIGN KEY (approver_id) REFERENCES employees(id);
