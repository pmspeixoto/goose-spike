ALTER TABLE questionaires_explores
    ADD COLUMN purchase_timeframe VARCHAR(255),
    ADD COLUMN current_btl_knowledge VARCHAR(255) NOT NULL,
    ADD COLUMN confidence_in_investment VARCHAR(255) NOT NULL;
