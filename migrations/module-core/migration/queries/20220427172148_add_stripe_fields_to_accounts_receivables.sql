-- +goose Up
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     ADD COLUMN stripe_intent_id VARCHAR(255),
     ADD COLUMN stripe_intent_created_at DATETIME;
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE accounts_receivables
     DROP COLUMN stripe_intent_id,
     DROP COLUMN stripe_intent_created_at;
-- +goose StatementEnd
