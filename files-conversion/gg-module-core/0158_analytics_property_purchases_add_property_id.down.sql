ALTER TABLE analytics_property_purchases
    MODIFY id INT NOT NULL,
    DROP COLUMN property_id;