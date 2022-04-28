-- +goose Up
-- +goose StatementBegin
-- Backfill all existing records with the default payment plan which is SIGN_UP_FEE of original £600.
 
 UPDATE property_purchases SET payment_plans_id = 2 WHERE payment_plans_id IS NULL;

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
UPDATE property_purchases SET payment_plans_id = NULL WHERE payment_plans_id IS NOT NULL;

-- +goose StatementEnd
