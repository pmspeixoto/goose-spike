ALTER TABLE property_purchases
    DROP FOREIGN KEY fk_property_purchases_consultants_consultant_id,
    DROP COLUMN consultant_id;