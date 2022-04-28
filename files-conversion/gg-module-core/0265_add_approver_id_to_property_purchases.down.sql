ALTER TABLE property_purchases
    DROP FOREIGN KEY fk_property_purchases_employees_uid,
    DROP COLUMN approver_id;