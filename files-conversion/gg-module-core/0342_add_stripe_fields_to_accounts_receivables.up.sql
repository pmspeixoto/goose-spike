ALTER TABLE accounts_receivables
    ADD COLUMN stripe_intent_id VARCHAR(255),
    ADD COLUMN stripe_intent_created_at DATETIME;