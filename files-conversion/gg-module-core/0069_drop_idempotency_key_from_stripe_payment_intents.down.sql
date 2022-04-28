ALTER TABLE stripe_payment_intents
    ADD COLUMN idempotency_key VARCHAR(255) NOT NULL UNIQUE,
    ADD INDEX(idempotency_key);