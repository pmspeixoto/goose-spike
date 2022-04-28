ALTER TABLE accounts_receivables
    DROP COLUMN stripe_intent_id,
    DROP COLUMN stripe_intent_created_at;