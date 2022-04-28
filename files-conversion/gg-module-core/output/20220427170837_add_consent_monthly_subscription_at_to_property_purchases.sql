-- +goose Up
-- +goose StatementBegin
ALTER TABLE property_purchases
 ADD COLUMN consent_monthly_subscription_at BIGINT;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
ALTER TABLE property_purchases
     DROP COLUMN consent_monthly_subscription_at;

-- +goose StatementEnd
