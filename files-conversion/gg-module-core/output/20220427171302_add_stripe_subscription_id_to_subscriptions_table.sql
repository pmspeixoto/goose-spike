-- +goose Up
-- +goose StatementBegin
ALTER TABLE subscriptions
     ADD COLUMN stripe_subscription_id VARCHAR(255);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE subscriptions
     DROP COLUMN stripe_subscription_id;

-- +goose StatementEnd
