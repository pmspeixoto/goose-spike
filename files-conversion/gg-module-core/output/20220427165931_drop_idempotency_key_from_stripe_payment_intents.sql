-- +goose Up
-- +goose StatementBegin
ALTER TABLE stripe_payment_intents
     DROP COLUMN idempotency_key;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE stripe_payment_intents
     ADD COLUMN idempotency_key VARCHAR(255) NOT NULL UNIQUE,
     ADD INDEX(idempotency_key);
-- +goose StatementEnd
