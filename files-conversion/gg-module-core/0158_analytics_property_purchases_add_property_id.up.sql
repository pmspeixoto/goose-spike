ALTER TABLE analytics_property_purchases
    MODIFY id INT auto_increment,
    ADD COLUMN property_id INT;