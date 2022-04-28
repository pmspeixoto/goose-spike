ALTER TABLE analytics_property_purchases
    ADD COLUMN signing_pending_at BIGINT,
    ADD COLUMN is_direct_incorp BOOLEAN DEFAULT false;
