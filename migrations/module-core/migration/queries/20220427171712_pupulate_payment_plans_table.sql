-- +goose Up
-- +goose StatementBegin
INSERT INTO payment_plans
 (`id`, `key`, `plan_type`, `amount_exc_vat_in_cents`, `vat_in_cents`, `vat_percentage`, `currency`, `frequency`, `created_at`, `updated_at`, `deleted_at`)
 VALUES
 (1, "SPV_SUBSCRIPTION", "SUBSCRIPTION", 2000, 400, 20, "GBP", "MONTHLY", 1625580014000000000, 1625580014000000000, null),
 (2, "SIGN_UP_FEE", "SIGN_UP", 50000, 10000, 20, "GBP", "ONCE", 1625580014000000000, 1625580014000000000, null),
 (3, "UK_SIGN_UP_FEE", "SIGN_UP", 9900, 1980, 20, "GBP", "ONCE", 1625580014000000000, 1625580014000000000, 1625580014000000000),
 (4, "NON_UK_SIGN_UP_FEE", "SIGN_UP", 29900, 5980, 20, "GBP", "ONCE",1625580014000000000, 1625580014000000000, 1625580014000000000);
 
 -- Breakdown @ 20%
 -- SPV_SUBSCRIPTION:   £20 +£4    =£24
 -- SIGN_UP_FEE:        £500+£100  =£600
 -- UK_SIGN_UP_FEE:     £99 +£19.80=£118.80
 -- NON_UK_SIGN_UP_FEE: £299+£59.80=£358.80

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DELETE FROM payment_plans;

-- +goose StatementEnd
